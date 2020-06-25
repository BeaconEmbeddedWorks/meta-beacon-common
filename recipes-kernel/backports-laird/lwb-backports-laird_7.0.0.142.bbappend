# The Laird code is a zipped up file rather than a repo. So just appending 
# modify config parameter just before config file is generated 


do_compile_prepend() {
    echo "CPTCFG_BT_BNEP=m" >> ${S}/defconfigs/lwb
    echo "CPTCFG_BT_BNEP_MC_FILTER=y" >> ${S}/defconfigs/lwb
    echo "CPTCFG_BT_BNEP_PROTO_FILTER=y" >> ${S}/defconfigs/lwb
}


