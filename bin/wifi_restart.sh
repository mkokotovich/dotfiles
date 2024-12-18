#!/bin/bash
set -xeuo pipefail

networksetup -setnetworkserviceenabled Wi-Fi off
networksetup -setnetworkserviceenabled Wi-Fi on
