#!/bin/bash

set -e

VERSION=66.8.1

AAR_URL=https://github.com/shiguredo/sora-webrtc-android/releases/download/${VERSION}/libwebrtc.aar

BUILD_DIR=build
mkdir -p ${BUILD_DIR}
cd ${BUILD_DIR}

curl -L -O ${AAR_URL}

mvn install:install-file \
    -Dfile=libwebrtc.aar \
    -Dpackaging=aar \
    -Dversion=${VERSION} \
    -DgroupId=com.github.shiguredo \
    -DartifactId=sora-webrtc-android
