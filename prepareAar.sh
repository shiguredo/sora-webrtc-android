#!/bin/bash

set -e

VERSION=66.8.1
## 最初、66.8.1 をリリース済みなので特別
## 67 からは VERSION と同じにする
RELEASE_VERSION=66.8.1.1

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
