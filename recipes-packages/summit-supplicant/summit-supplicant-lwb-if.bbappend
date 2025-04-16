# wpa_supplicant doesn't get installed by default

do_install:append () {
    install -m 0755 -D -t "${D}${bindir}" wpa_supplicant
}
