#!/usr/bin/env bash
args="."
if [[ $# -ne 0 ]]; then
    args="$@"
fi
flake8 . | lintly --api-key $INPUT_GITHUBAPITOKEN --fail-on $INPUT_FAILONVIOLATIONS --log --no-post-status
