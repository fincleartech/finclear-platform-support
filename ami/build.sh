#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: build.sh <PackerFile.json>"
    exit 1;
fi

date
UUID=$(uuid -v4)
TIMESTAMP=$(date +"%Y%m%d-%H%M")
packer build -var build_timestamp=${TIMESTAMP} $1
echo "Done"
date
