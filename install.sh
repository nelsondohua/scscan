#!/bin/bash

set -e

echo "Installing scscan..."

mkdir -p /usr/local/share/scscan

curl -L \
https://raw.githubusercontent.com/<YOUR_ACCOUNT>/scscan/main/scscan \
-o /usr/local/bin/scscan

chmod +x /usr/local/bin/scscan

/usr/local/bin/scscan -u

echo
echo "Installation Complete."
echo
echo "Run:"
echo
echo "    scscan"
