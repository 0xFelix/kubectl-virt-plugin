#!/usr/bin/env bash

set -euo pipefail

# shellcheck source=scripts/functions
source "$(dirname "${BASH_SOURCE[0]}")/functions"

[ "$#" -eq 0 ] && usage "version must be provided!"
[ -z "$1" ] && usage "version must be provided!"

test_linux_install_on_docker "$1"
