#!/bin/bash

set -e

echo "Installing scscan..."

mkdir -p /usr/local/share/scscan

curl -fsSL \
https://raw.githubusercontent.com/nelsondohua/scscan/main/scscan \
-o /usr/local/bin/scscan

chmod +x /usr/local/bin/scscan

/usr/local/bin/scscan -u

echo
echo "==========================================="
echo "scscan installed successfully."
echo
echo "Run:"
echo
echo "    scscan"
echo "==========================================="
