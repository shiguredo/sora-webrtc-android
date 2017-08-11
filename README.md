# WebRTC libraries for Android

このリポジトリは [WebRTC SFU Sora](https://sora.shiguredo.jp) Android SDK 向けにビルドした libwebrtc.aar ファイルを公開しています。

## libwebrtc.aar ファイルを読み込ませる

最新バージョン 60.9.1 の [libwebrtc.aar.zip](https://github.com/shiguredo/sora-webrtc-android/releases/download/60.9.1/libwebrtc.aar.zip) をダウンロードして、解凍した libwebrtc.aar ファイルを libs ディレクトリ以下に置いて下さい。

そして build.gradle に下記を追記して下さい。

```
dependencies {
    compile(name:'libwebrtc', ext:'aar')
}

repositories{
    flatDir{
        dirs 'libs'
    }
}
```
