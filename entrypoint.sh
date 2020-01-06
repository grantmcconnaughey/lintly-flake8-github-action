#!/usr/bin/env bash

flake8 $* | lintly --api-key $INPUT_TOKEN --fail-on $INPUT_FAILIF --log --no-post-status
