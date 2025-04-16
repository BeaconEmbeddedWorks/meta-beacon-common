#SRCBRANCH = "lf-6.12.3_1.0.0"
#SRCREV = "0396cfb38ad73a3d587cd0f8c139b47801e70891"

KERNEL_MODULE_AUTOLOAD += "moal"
KERNEL_MODULE_PROBECONF += "moal"
module_conf_moal = "options moal mod_para=nxp/wifi_mod_para.conf"

