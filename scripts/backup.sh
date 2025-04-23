export backup_dir="backup"

docker exec -i splice-validator-postgres-splice-1 pg_dump -U cnadmin validator > "${backup_dir}"/validator-"$(date -u +"%Y-%m-%dT%H:%M:%S%:z")".dump
active_participant_db=$(docker exec splice-validator-participant-1 bash -c 'echo $CANTON_PARTICIPANT_POSTGRES_DB')
docker exec splice-validator-postgres-splice-1 pg_dump -U cnadmin "${active_participant_db}" > "${backup_dir}"/"${active_participant_db}"-"$(date -u +"%Y-%m-%dT%H:%M:%S%:z")".dump