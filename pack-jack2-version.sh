#!/bin/bash

export JACK2_VERSION=v1.9.15
export QJACKCTL_VERSION=0.6.3

set -e

cd $(dirname ${0})

# ---------------------------------------------------------------------------------------------------------------------

target="${1}"

if [ -z "${target}" ]; then
    echo "usage: ${0} <target>"
    exit 1
fi

# ---------------------------------------------------------------------------------------------------------------------

./PawPaw/build-jack2.sh ${target}
./PawPaw/pack-jack2.sh ${target}

# ---------------------------------------------------------------------------------------------------------------------
