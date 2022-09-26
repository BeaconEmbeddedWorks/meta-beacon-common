SUMMARY = "Decode EDID data in human readable format"
DESCRIPTION = "edid-decode  decodes  EDID  monitor description data in human-readable format. By default the output is written as a hex dump 			 when writing to standard output or a raw EDID if written to a file."
HOMEPAGE = "https://hverkuil.home.xs4all.nl/edid-decode/edid-decode.html"

LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

BRANCH = "master"
REPOPATH = "linuxtv.org/edid-decode.git"
SRCREV = "9ba4e90f3c0705351d32f526653e3e765fa2cf64"
SRC_URI = "git://${REPOPATH};protocol=git;branch=${BRANCH}"

S = "${WORKDIR}/git"

EXTRA_OEMAKE = "'CC=${CC}' 'RANLIB=${RANLIB}' 'AR=${AR}' 'CFLAGS=${CFLAGS}'\
	'LDFLAGS=${LDFLAGS}'\
"

do_install () {
        install -d ${D}/${bindir}
        install -m 0755 ${S}/${PN} ${D}/${bindir}
}

