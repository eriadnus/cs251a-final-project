#!/bin/bash

docker_container="cs251a-hcassar"
source_location="${1}"
deploy_location="/root/project/harrison"
GEM5_DIR="${2}"

docker cp "${source_location}" "${docker_container}:${deploy_location}/"

#docker exec -i "${docker_container}" /bin/bash < "${deploy_location}/cs251a_deploy/copy.sh ${GEM5_DIR}"
