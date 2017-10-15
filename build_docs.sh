#!/bin/bash
set -e

git submodule update --remote

jazzy --config UIDefaultFont/.jazzy.yaml

open index.html