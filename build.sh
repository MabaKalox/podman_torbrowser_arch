#!/bin/sh

set -e
set -x

podman build -t torbrowser .
