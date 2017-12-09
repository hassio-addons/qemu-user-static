#!/bin/sh
# shellcheck disable=SC2034
# ==============================================================================
# Community Hass.io Add-ons: qemu-user-static
# Registers qemu-*-static for all Hass.io supported processors
# ==============================================================================

# List of processors to target
qemu_target_list="aarch64 arm"

# Magic!
arm_magic='\x7fELF\x01\x01\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x02\x00\x28\x00'
arm_mask='\xff\xff\xff\xff\xff\xff\xff\x00\xff\xff\xff\xff\xff\xff\xff\xff\xfe\xff\xff\xff'
arm_family=arm
aarch64_magic='\x7fELF\x02\x01\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x02\x00\xb7\x00'
aarch64_mask='\xff\xff\xff\xff\xff\xff\xff\x00\xff\xff\xff\xff\xff\xff\xff\xff\xfe\xff\xff\xff'
aarch64_family=arm

# Detect if binfmt support is loaded into the kernel
if [ ! -d /proc/sys/fs/binfmt_misc ]; then
    echo "No binfmt support in the kernel."
    echo "  Try: '/sbin/modprobe binfmt_misc' from the host"
    exit 1
fi

# Mount binfmt_misc
if [ ! -f /proc/sys/fs/binfmt_misc/register ]; then
    mount binfmt_misc -t binfmt_misc /proc/sys/fs/binfmt_misc
fi

# Check if we can register
if [ ! -w "/proc/sys/fs/binfmt_misc/register" ] ; then
    echo 'ERROR: Cannot write to /proc/sys/fs/binfmt_misc/register' 1>&2
    exit 1
fi

# Enable qemu for target CPU's
for target in $qemu_target_list; do
    magic=$(eval echo "\$${target}_magic")
    mask=$(eval echo "\$${target}_mask")
    family=$(eval echo "\$${target}_family")

    if [ "$magic" = "" ] || [ "$mask" = "" ] || [ "$family" = "" ] ; then
        echo "INTERNAL ERROR: unknown cpu $target" 1>&2
        continue
    fi

    # Enable QEMU for this CPU
    if [ -f "/proc/sys/fs/binfmt_misc/qemu-${target}" ]; then
        # shellcheck disable=SC2039
        echo "-1" > "/proc/sys/fs/binfmt_misc/qemu-${target}"
    fi

    # Register
    qemu="/usr/bin/qemu-${target}-static"
    echo "Setting ${qemu} as binfmt interpreter for ${target} (${family})"
    echo ":qemu-${target}:M::${magic}:${mask}:/usr/bin/qemu-${target}-static:" \
        > /proc/sys/fs/binfmt_misc/register
done
