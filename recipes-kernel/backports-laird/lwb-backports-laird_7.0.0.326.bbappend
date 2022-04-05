# updating BT Laird config parameters

do_compile_prepend() {

    echo "CPTCFG_BT_BNEP=m" >> ${S}/defconfigs/lwb
    echo "CPTCFG_BT_BNEP_MC_FILTER=y" >> ${S}/defconfigs/lwb
    echo "CPTCFG_BT_BNEP_PROTO_FILTER=y" >> ${S}/defconfigs/lwb
}


