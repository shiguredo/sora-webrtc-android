# WebRTC libraries for Android

このリポジトリは [WebRTC SFU Sora](https://sora.shiguredo.jp) Android SDK 向けにビルドした libwebrtc.aar ファイルを公開しています。

## libwebrtc.aar ファイルを読み込ませる

[libwebrtc.aar.zip](https://github.com/shiguredo/sora-webrtc-android/releases/download/60.9.1/libwebrtc.aar.zip) をダウンロードして、解凍して libs フォルダ以下に追加して下さい。

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
