# https://dev.network.canton.global/validator_operator/validator_compose.html#deployment

echo "###################################"
echo "Deploying Canton validator"
echo "###################################"

# set here your party hint, format company-role-increment, i.e. simon-validator-1
party_hint="simon-validator-1"
echo "party_hint="${party_hint}

export IMAGE_TAG=0.3.18
echo "IMAGE_TAG="${IMAGE_TAG}

SPONSOR_SV_URL="https://sv.sv-1.dev.global.canton.network.sync.global"
#SPONSOR_SV_URL="https://sv.sv-2.dev.global.canton.network.digitalasset.com"
echo "SPONSOR_SV_URL="${SPONSOR_SV_URL}

MIGRATION_ID=1
echo "MIGRATION_ID="${MIGRATION_ID}

echo "Requesting onboarding secret from SPONSOR_SV "${SPONSOR_SV_URL}
ONBOARDING_SECRET=$(curl -X POST ${SPONSOR_SV_URL}/api/sv/v0/devnet/onboard/validator/prepare)

echo "Starting the validator node"
./splice-node/docker-compose/validator/start.sh -s "${SPONSOR_SV_URL}" -o "${ONBOARDING_SECRET}" -p "${party_hint}" -m "${MIGRATION_ID}" -w
