#!/bin/bash

set -e

VERSION=67.28.0

## このリポジトリ的にメンテナンス番号をふるときは ${VERSION}.1 などとする
RELEASE_VERSION=${VERSION}.1

AAR_URL=https://github.com/shiguredo/sora-webrtc-android/releases/download/${VERSION}/libwebrtc.aar

BUILD_DIR=build
mkdir -p ${BUILD_DIR}
cd ${BUILD_DIR}

curl -L -O ${AAR_URL}

mvn install:install-file \
    -Dfile=libwebrtc.aar \
    -Dpackaging=aar \
    -Dversion=${RELEASE_VERSION} \
    -DgroupId=com.github.shiguredo \
    -DartifactId=sora-webrtc-android
