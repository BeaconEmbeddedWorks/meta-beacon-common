SUMMARY = "Beacon EmbeddedWorks EEPROM decoder utility"
DESCRIPTION = "Beacon EmbeddedWorks EEPROM decoder utility"
HOMEPAGE = ""

LICENSE = "CLOSED"

BRANCH = "trunk"
REPOPATH = "bitbucket.logicpd.com/scm/lcts/eeprom-decoder.git"
SRCREV = "47c440aec2384b0c6bc242692f9c4b4b48961625"

SRC_URI = "git://${REPOPATH};protocol=https;branch=${BRANCH} \
	"

S = "${WORKDIR}/git/"

EXTRA_OEMAKE = "'CC=${CC}' 'RANLIB=${RANLIB}' 'AR=${AR}' 'CFLAGS=${CFLAGS}'\
	'LDFLAGS=${LDFLAGS}'\
"

do_install () {
        install -d ${D}/${bindir}
        install -m 0755 ${S}/tools/${PN} ${D}/${bindir}
}

