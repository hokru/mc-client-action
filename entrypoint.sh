#!/bin/sh -l
set -euo pipefail

# instead of mc alias the config is done via MC_HOST_<alias>
export MC_HOST_$TARGET=https://$ACCESS_KEY:$SECRET_KEY@$ENDPOINT

echo "Running: $1" >> $GITHUB_OUTPUT
$1
