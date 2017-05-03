DESCRIPTION = "virglrenderer"

#DEPENDS = " expat mesa libepoxy"

LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COREBASE}/LICENSE;md5=4d92cd373abda3937c2bc47fbc49d690"

# 0.6.0
SRCREV ="3fe3195bcdc74f5c178b57bcab7a804fd2d557b8"
SRC_URI = "git://anongit.freedesktop.org/virglrenderer"

PV = "0.0+git${SRCPV}"

S = "${WORKDIR}/git"

inherit autotools pkgconfig native

do_configure_prepend () {
    export  PKG_CONFIG_PATH="${PKG_CONFIG_PATH}:/usr/lib/x86_64-linux-gnu/pkgconfig"
}
