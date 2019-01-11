#!/bin/bash
set -euo pipefail

read -p "Please enter path to base directory (e.g. /web/developer-center/api): " path
read -p "Please enter environments separated by spaces (e.g. dev test stage prod): " environments
read -p "Please enter name of key (e.g. django_secret_key). Leave blank for all under this path: " name

for env in ${environments} ; do
    fullname="${path}/${env}/${name}"
    echo "Looking up ${fullname}"
    if [[ -z ${name} ]] ; then
        aws ssm get-parameters-by-path --path "${fullname}" --recursive --with-decryption
    else
        aws ssm get-parameter --name "${fullname}" --with-decryption
    fi
done

if [[ -z "${environments}" ]] ; then
    CMD="aws ssm get-parameters-by-path --path ${path} --recursive --with-decryption"
    echo "Running: ${CMD}"
    ${CMD}
fi

echo "Success!"
