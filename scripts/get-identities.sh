token=$(python3 ../splice-node/docker-compose/validator/get-token.py administrator) 
NodeIdentities=$(curl "http://wallet.localhost/api/validator/v0/admin/participant/identities" -H "authorization: Bearer ${token}")
echo "$NodeIdentities" > ../secrets/NodeIdentities.txt