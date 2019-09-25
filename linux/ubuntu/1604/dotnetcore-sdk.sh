#!/bin/bash
################################################################################
##  File:  dotnetcore-sdk.sh
##  Team:  CI-Platform
##  Desc:  Installs .NET Core SDK
################################################################################
# Source the helpers for use with the script
source $HELPER_SCRIPTS/document.sh
source $HELPER_SCRIPTS/apt.sh

wget -q https://packages.microsoft.com/config/ubuntu/16.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
dpkg -i packages-microsoft-prod.deb
apt-get install apt-transport-https
apt-get update
apt-get install dotnet-sdk-2.1
apt-get install dotnet-sdk-2.2
apt-get install dotnet-sdk-3.0