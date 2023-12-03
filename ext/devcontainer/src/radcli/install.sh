#!/usr/bin/env bash
set -e

CLI_VERSION="${VERSION:-"latest"}" 

# Ensure apt is in non-interactive to avoid prompts
export DEBIAN_FRONTEND=noninteractive

# Checks if packages are installed and installs them if not
#check_packages() {
#    if ! dpkg -s "$@" > /dev/null 2>&1; then
#        apt_get_update
#        apt-get -y install --no-install-recommends "$@"
#    fi
#}

#echo "(*) Ensuring dependencies are installed"

#check_packages apt-transport-https curl ca-certificates xdg-utils
#check_packages $(apt-cache search '^libicu[0-9]+$' | cut -d' ' -f1)

echo "(*) Installing Radius CLI"

# If version is not specified, install latest otherwiese install edge version
if [ "${CLI_VERSION}" = "latest" ]; then
    wget -q "https://raw.githubusercontent.com/radius-project/radius/main/deploy/install.sh" -O - | /bin/bash
else
    wget -O /usr/local/bin/rad https://get.radapp.dev/tools/rad/edge/linux-x64/rad 
    chmod +rx /usr/local/bin/rad
fi
