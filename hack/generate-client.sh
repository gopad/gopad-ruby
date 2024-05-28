#!/usr/bin/env bash
set -eo pipefail

if [ -L "${0}" ]
then
    ROOT=$(realpath -e "$(dirname "$(readlink -e "${0}")")/..")
else
    ROOT=$(realpath -e "$(dirname "${0}")/..")
fi

SPEC_VERSION="1.0.0-alpha1"
SPEC_DOWNLOAD=${SPEC:-https://dl.gopad.eu/openapi/${SPEC_VERSION}.yml}

pushd "${ROOT}" >/dev/null
    echo "> deleting library folder"
    rm -rf lib

    openapi-generator-cli \
        generate \
        -c openapi.yml \
        -g ruby \
        --git-repo-id gopad-ruby \
        --git-user-id gopad \
        --http-user-agent "gopad-ruby/${SPEC_VERSION}" \
        -i "${SPEC_DOWNLOAD}" \
        -o . \
        -t hack/openapi/templates \
        --strict-spec true

    rake rubocop:autocorrect || true
popd >/dev/null
