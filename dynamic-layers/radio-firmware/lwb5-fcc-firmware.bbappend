SUMMARY = "Laird Firmware install "
DESCRIPTION = "installs the latest laird  firmware "
AUTHOR = "BeaconEmbedded"
DEPENDS = ""
LICENSE = "CLOSED"

FW_FILE = "/firmware/brcm/brcmfmac4339-sdio-prod_v6.37.39.141.bin"
FCC_FW_FILE = "/firmware/brcm/brcmfmac4339-sdio-fcc.txt"

h
do_install:append() {
	# make links to firmware with correct name so driver finds firmware

	install -d ${D}${base_libdir}/firmware/brcm
	cp -r --no-dereference --preserve=mode,links -v ${WORKDIR}${base_libdir}/firmware/* ${D}/${base_libdir}/firmware

	ln  -s -r ${WORKDIR}${base_libdir}${FW_FILE} ${D}/${base_libdir}/firmware/brcm/brcmfmac4339-sdio.beacon,${MACHINE}.bin
	ln  -s -r ${WORKDIR}${base_libdir}${FCC_FW_FILE} ${D}/${base_libdir}/firmware/brcm/brcmfmac4339-sdio.beacon,${MACHINE}.txt

}
