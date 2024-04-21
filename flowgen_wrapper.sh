#!/bin/bash
set -e

# Attempt to resolve domain name
IP=$(dig +short +search ${@: -1})

#Print resolution
echo "Sending flow records to ${IP}..."
flowgen ${@:1:$#-1} ${IP}
