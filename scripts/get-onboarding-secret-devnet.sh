# https://dev.network.canton.global/validator_operator/validator_compose.html#deployment

echo ""
echo "###################################"
echo "Getting Canton onboarding secret"
echo "###################################"
echo ""

# GSF
# SPONSOR_SV_URL="https://sv.sv-1.dev.global.canton.network.sync.global"
# DA-2
SPONSOR_SV_URL="https://sv.sv-2.dev.global.canton.network.digitalasset.com"

echo "Requesting onboarding secret from SPONSOR_SV "${SPONSOR_SV_URL}
echo ""
ONBOARDING_SECRET=$(curl -X POST ${SPONSOR_SV_URL}/api/sv/v0/devnet/onboard/validator/prepare)
echo ""
echo "ONBOARDING_SECRET="${ONBOARDING_SECRET}
echo ""