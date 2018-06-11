#!/bin/bash
set -euo pipefail

read -p "Please enter path to base directory (e.g. /web/developer-center/api): " path
read -p "Please enter name of key (e.g. django_secret_key): " name

for env in dev stage test prod ; do
    fullname="${path}/${env}/${name}"
    read -p "${env}: Please enter the value of ${fullname} (or press enter to skip): " value
    if [ -z ${value} ] ; then
        continue
    fi
    aws ssm put-parameter --name "${fullname}" --type "SecureString" --value "${value}"
done

echo "Success!"
