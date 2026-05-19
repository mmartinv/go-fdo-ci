#! /bin/bash

set -euo pipefail

source "$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)/../ci/test-ov-verification.sh"
source "$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)/utils.sh"

client_compose_file="${COMPOSE_DIR}/client/fdo-client.yaml"
servers_compose_file="${COMPOSE_DIR}/server/fdo-ov-verification-servers.yaml"

# Allow running directly
[[ "${BASH_SOURCE[0]}" != "$0" ]] || {
  run_test
  cleanup
}
