FROM busybox

# Build arugments
ARG BUILD_DATE
ARG BUILD_REF

# Copy root filesystem
COPY rootfs /

# Command
CMD ["/usr/bin/register.sh"]

LABEL \
    maintainer="Franck Nijhof <frenck@addons.community>" \
    org.label-schema.description="Registers qemu-*-static for all Home Assistant supported processors" \
    org.label-schema.build-date=${BUILD_DATE} \
    org.label-schema.name="qemu-user-static" \
    org.label-schema.schema-version="1.0" \
    org.label-schema.url="https://addons.community" \
    org.label-schema.usage="https://github.com/hassio-addons/qemu-user-static/tree/master/README.md" \
    org.label-schema.vcs-ref=${BUILD_REF} \
    org.label-schema.vcs-url="https://github.com/hassio-addons/qemu-user-static" \
    org.label-schema.vendor="Community Home Assistant Add-ons"
