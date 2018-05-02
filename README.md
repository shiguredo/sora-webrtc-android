# WebRTC libraries for Android

このリポジトリは [WebRTC SFU Sora](https://sora.shiguredo.jp) Android SDK 向けにビルドした libwebrtc.aar ファイルを公開しています。

利用方法の例は Sora Android SDK をご覧ください。

## jitpack.io での AAR の配布

公開している AAR ファイルを jitpack.io でも配布しています。

build.gradle で、リポジトリ URL の追加、および依存関係を記述することで利用可能です。

```
    repositories {
        maven { url 'https://jitpack.io' }
    }
```


```
api "com.github.shiguredo:sora-webrtc-android:${libwebrtc_version}"
```
