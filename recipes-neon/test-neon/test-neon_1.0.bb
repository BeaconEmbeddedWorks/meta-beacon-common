
SUMMARY = "NEON test application"
DESCRIPTION = "Simple application to test NEON program code"
AUTHOR = "LogicPD"
DEPENDS = ""
LICENSE = "MIT"


LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"


FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}-${PV}:"
SRC_URI = "file://test-neon.c"

S = "${WORKDIR}"

TARGET_CC_ARCH += "${LDFLAGS}"

do_compile() {
	${CC} test-neon.c -o test-neon
}

do_install() {
	install -d ${D}${bindir}
	install -m 0755 test-neon ${D}${bindir}
}


