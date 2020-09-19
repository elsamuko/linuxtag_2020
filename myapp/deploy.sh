#!/usr/bin/env bash

# git tag "v0.1.0" -a -m "v0.1.0"
GIT_TAG=$(git describe --abbrev=0)
APPNAME="myapp"

function doPrepare {
  echo "Clean"
  flutter clean
}

function createBundle {
  echo "Create bundle"
  flutter build appbundle --no-shrink
  cp "build/app/outputs/bundle/release/app-release.aab" "tmp/$APPNAME-$GIT_TAG.aab"
}

function createAPKs {
  echo "Create apks"
  flutter build apk --no-shrink --split-per-abi
  cp "build/app/outputs/apk/release/app-arm64-v8a-release.apk" "tmp/$APPNAME-arm64-v8a-$GIT_TAG.apk"
  cp "build/app/outputs/apk/release/app-armeabi-v7a-release.apk" "tmp/$APPNAME-armeabi-v7a-$GIT_TAG.apk"
}

doPrepare
createBundle
createAPKs
