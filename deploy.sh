#!/bin/bash

user_name="hcassar"
tmp_dir_name="cs251a_deploy"
tmp_dir="/tmp/${tmp_dir_name}"
remote_deploy_directory="~/"
GEM5_DIR="gem5-harrison"

mkdir "${tmp_dir}"

while read -r filename; do
	cp "${filename}" "${tmp_dir}/${filename}"
done < version_controlled_files.txt

cp "copy.sh" "${tmp_dir}/copy.sh"

scp -r "${tmp_dir}" "${user_name}@tetracosa.cs.ucla.edu:${remote_deploy_directory}/${tmp_dir_name}"

ssh "${user_name}@tetracosa.cs.ucla.edu" 'bash -s' < ./deploy_remote.sh "${remote_deploy_directory}/${tmp_dir_name}" "${GEM5_DIR}"

rm -r "${tmp_dir}"
