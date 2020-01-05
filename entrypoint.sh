#!/usr/bin/env bash
args="."
if [[ $# -ne 0 ]]; then
    args="$@"
fi
echo "lintly ${args} --no-post-status"
flake8 . | lintly --no-post-status --api-key $INPUT_GITHUBAPITOKEN --log
