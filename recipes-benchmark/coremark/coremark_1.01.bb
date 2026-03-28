SUMMARY = "EEMBC CoreMark CPU benchmark"
DESCRIPTION = "CoreMark is a simple, yet sophisticated benchmark that is designed \
specifically to test the functionality of a processor core."
HOMEPAGE = "https://github.com/eembc/coremark"
SECTION = "benchmark"
LICENSE = "Apache-2.0"
LIC_FILES_CHKSUM = "file://LICENSE.md;md5=0a18b17ae63deaa8a595035f668aebe1"

SRC_URI = "git://github.com/eembc/coremark.git;protocol=https;branch=main"
SRCREV = "d5fad6bd094899101a4e5fd53af7298160ced6ab"

S = "${WORKDIR}/git"

EXTRA_OEMAKE = " \
    PORT_DIR=linux \
    CC='${CC}' \
    XCFLAGS='${CFLAGS} ${LDFLAGS} -DPERFORMANCE_RUN=1 -DITERATIONS=0 -I${S} -I${S}/linux -I${S}/posix' \
    EXE='' \
"

do_compile() {
    oe_runmake compile
}

do_install() {
    install -d ${D}${bindir}
    install -m 0755 ${S}/coremark ${D}${bindir}/
}
