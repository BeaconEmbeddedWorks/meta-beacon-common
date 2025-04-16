IMAGE_INSTALL:append = " wpa-supplicant"

# If the Laird Layer is enabled, use the default supplicant tools instead of theirs
PREFERRED_RPROVIDER_wpa-supplicant = "wpa-supplicant"
PREFERRED_RPROVIDER_wpa-supplicant-cli = "wpa-supplicant"
PREFERRED_RPROVIDER_wpa-supplicant-passphrase = "wpa-supplicant"
PREFERRED_RPROVIDER_wireless-regdb-static = "wireless-regdb"
