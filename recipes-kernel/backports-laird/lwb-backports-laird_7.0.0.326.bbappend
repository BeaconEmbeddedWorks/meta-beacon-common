# Create a Laird release directory and download the firmware and
# modify config parameter just before config file is generated

FIRMWARE_URI = "https://github.com/LairdCP/Sterling-LWB-and-LWB5-Release-Packages/releases/download/"
FIRMWARE_REV = "LRD-REL-7.0.0.326/laird-lwb5-fcc-firmware-7.0.0.326.tar.bz2"

do_compile_prepend() {

   mkdir -p ${TOPDIR}/../release
   wget -O ${TOPDIR}/../release/laird-lwb5-fcc-firmware-7.0.0.326.tar.bz2 \
   "${FIRMWARE_URI}${FIRMWARE_REV}"

    echo "CPTCFG_BT_BNEP=m" >> ${S}/defconfigs/lwb
    echo "CPTCFG_BT_BNEP_MC_FILTER=y" >> ${S}/defconfigs/lwb
    echo "CPTCFG_BT_BNEP_PROTO_FILTER=y" >> ${S}/defconfigs/lwb
}


