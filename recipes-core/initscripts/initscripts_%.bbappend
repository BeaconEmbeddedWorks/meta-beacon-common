# Copyright (C) 2020 Compass Electronics Group, LLC

DESCRIPTION = "Custom config script for debug console suppporting Beacon EmbeddedWorks kits."

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI += " \
     file://configterm.sh \
 "

do_install_append() {
   # This file creates an init script that configures terminal and is exectuted at startup

    install -d ${D}${sysconfdir}/profile.d/
    install -m 0755    ${WORKDIR}/configterm.sh       ${D}${sysconfdir}/profile.d/
}

