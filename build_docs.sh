#!/bin/bash
set -e

git submodule update --remote

jazzy

open index.html