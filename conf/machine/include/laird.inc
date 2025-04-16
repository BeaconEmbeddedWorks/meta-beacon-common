# Below stuff is for the Laird/Summit Radio

# ERROR_QA:remove must be removed for the backports to build
ERROR_QA:remove = "patch-status"

LWB_REGDOMAIN = "US"

PREFERRED_PROVIDER_wireless-regdb-static = "wireless-regdb"

IMAGE_INSTALL:append = "\
	lwb5-fcc-firmware \
	summit-supplicant-lwb-if \
	wireless-regdb-static \
	"
 
PREFERRED_RPROVIDER_wpa-supplicant = "summit-supplicant-lwb-if"
PREFERRED_RPROVIDER_wpa-supplicant-cli = "summit-supplicant-lwb-if"
PREFERRED_RPROVIDER_wpa-supplicant-passphrase = "summit-supplicant-lwb-if"
PREFERRED_RPROVIDER_wireless-regdb-static = "wireless-regdb"
