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
    org.opencontainers.image.title="qemu-user-static" \
    org.opencontainers.image.description="Registers qemu-*-static for all Home Assistant supported processors" \
    org.opencontainers.image.vendor="Home Assistant Community Add-ons" \
    org.opencontainers.image.authors="Franck Nijhof <frenck@addons.community>" \
    org.opencontainers.image.licenses="MIT" \
    org.opencontainers.image.url="https://addons.community" \
    org.opencontainers.image.source="https://github.com/hassio-addons/qemu-user-static" \
    org.opencontainers.image.documentation="https://github.com/hassio-addons/qemu-user-static/tree/master/README.md" \
    org.opencontainers.image.created=${BUILD_DATE} \
    org.opencontainers.image.revision=${BUILD_REF}
