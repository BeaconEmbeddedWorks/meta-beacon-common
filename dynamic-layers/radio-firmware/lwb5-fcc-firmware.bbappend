SUMMARY = "Laird Firmware install "
DESCRIPTION = "installs the latest laird  firmware "
AUTHOR = "BeaconEmbedded"
DEPENDS = ""
LICENSE = "CLOSED"

FW_FILE = "brcm/brcmfmac4339-sdio-prod_v6.37.39.141.bin"
FCC_FW_FILE = "brcm/brcmfmac4339-sdio-fcc.txt"

do_install:append() {
	# make links to firmware with correct name so driver finds firmware

	ln  -s -r ${D}/${base_libdir}/firmware/${FW_FILE} ${D}/${base_libdir}/firmware/brcm/brcmfmac4339-sdio.beacon,${KERNEL_DEVICETREE_BASENAME}-kit.bin
	ln  -s -r ${D}/${base_libdir}/firmware/${FW_FILE} ${D}/${base_libdir}/firmware/brcm/brcmfmac4339-sdio.beacon,${KERNEL_DEVICETREE_BASENAME}-lvds.bin 
	ln  -s -r ${D}/${base_libdir}/firmware/${FW_FILE} ${D}/${base_libdir}/firmware/brcm/brcmfmac4339-sdio.beacon,${KERNEL_DEVICETREE_BASENAME}-spidev.bin 
	
	ln  -s -r ${D}/${base_libdir}/firmware/${FCC_FW_FILE} ${D}/${base_libdir}/firmware/brcm/brcmfmac4339-sdio.beacon,${KERNEL_DEVICETREE_BASENAME}-kit.txt
	ln  -s -r ${D}/${base_libdir}/firmware/${FCC_FW_FILE} ${D}/${base_libdir}/firmware/brcm/brcmfmac4339-sdio.beacon,${KERNEL_DEVICETREE_BASENAME}-lvds.txt
	ln  -s -r ${D}/${base_libdir}/firmware/${FCC_FW_FILE} ${D}/${base_libdir}/firmware/brcm/brcmfmac4339-sdio.beacon,${KERNEL_DEVICETREE_BASENAME}-spidev.txt
}
