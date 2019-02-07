#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

run_update() {
    info "Running updater."
    bash "${SCRIPTPATH}/main.sh" -u
    bash "${SCRIPTPATH}/main.sh" -u origin/master
    bash "${SCRIPTPATH}/main.sh" -u "${TRAVIS_COMMIT}"

    info "Update test complete."
}
