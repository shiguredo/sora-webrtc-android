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

## リリース方法 (開発者向け)

1. AAR をビルドする
   - 詳細は https://github.com/shiguredo/sora-webrtc-build リポジトリを参照
2. `git flow release start <RELEASE_VERSION>`
3. `prepareAar.sh` の `VERSION` を変更する
   - これは sora-webrtc-build でビルドした AAR のバージョン
4. `prepareAar.sh` の `RELEASE_VERSION` を変更する
   - 基本は `VERSION` と同じ、このリポジトリのメンテンナスにより同一 AAR に
     複数バージョンをつけたい場合はサフィックスを付ける
5. `git flow release finish <RELEASE_VERSION>`
6. `git push --tags master develop`
7. AAR を releases の `<RELEASE_VERSION>` タグに上げる
8. shiguredo / sora-webrtc-android https://jitpack.io/#shiguredo/sora-webrtc-android/ を確認
