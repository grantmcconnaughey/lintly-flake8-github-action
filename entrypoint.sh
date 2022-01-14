#!/usr/bin/env bash

args="."
if [[ $# -ne 0 ]]; then
    args="$@"
fi

if $INPUT_REQUESTCHANGES; then
    REQUEST_CHANGES_STRING='--request-changes'
else
    REQUEST_CHANGES_STRING='--no-request-changes'
fi

flake8 ${args} | lintly --api-key $INPUT_TOKEN --fail-on $INPUT_FAILIF $REQUEST_CHANGES_STRING --log --no-post-status
