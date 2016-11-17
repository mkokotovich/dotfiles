#!/bin/bash
set -xeuo pipefail

source=80
dest=8080

echo "Redirecting incoming traffic on port ${source} to port ${dest}"
sudo iptables -t nat -A PREROUTING -p tcp --dport ${source} -j REDIRECT --to-port ${dest}
echo "Success!"
