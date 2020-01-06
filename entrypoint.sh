#!/usr/bin/env bash
args="."
if [[ $# -ne 0 ]]; then
    args="$@"
fi
flake8 . | lintly --api-key $INPUT_TOKEN --fail-on $INPUT_FAILIF --log --no-post-status
