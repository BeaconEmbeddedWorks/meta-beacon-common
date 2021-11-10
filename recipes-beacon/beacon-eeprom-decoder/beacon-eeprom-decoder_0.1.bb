SUMMARY = "Beacon EmbeddedWorks EEPROM decoder utility"
DESCRIPTION = "Beacon EmbeddedWorks EEPROM decoder utility"
HOMEPAGE = ""

LICENSE = "CLOSED"

BRANCH = "beacon_trunk"
REPOPATH = "bitbucket.logicpd.com/scm/lcts/eeprom-decoder.git"
SRCREV = "01e94fe6ea11362e0e3208147aa7bfd14ccde5cc"

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

