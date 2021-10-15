#!/bin/bash
set -euo pipefail

read -p "Please enter path to base directory (e.g. /web/developer-center/api): " path
read -p "Please enter name of key (e.g. django_secret_key): " name

REGION=us-east-1

for env in dev test stage prod ; do
    fullname="${path}/${env}/${name}"
    read -p "${env}: Please enter the value of ${fullname} (or press enter to skip): " value
    if [ -z ${value} ] ; then
        continue
    fi
    aws ssm put-parameter --name "${fullname}" --type "SecureString" --value "${value}" --key-id "alias/${env}SSM" --overwrite --region "${REGION}"
done

echo "Success!"
