#!/bin/sh -l
set -euo pipefail

# instead of mc alias the config is done via MC_HOST_<alias>
export MC_HOST_$ALIAS=https://$ACCESS_KEY:$SECRET_KEY@$ENDPOINT

if [[ -z "$WORKDIR" ]]; then
    cd $WORKDIR
fi
export CMD=$1
# echo "text=Running: $CMD" >> $GITHUB_OUTPUT
$CMD
#exec /usr/local/bin/gosu user "$@"

