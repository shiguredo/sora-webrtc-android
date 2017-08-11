# WebRTC libraries for Android

This repository provides built WebRTC libraries which is configured for [WebRTC SFU Sora](https://sora.shiguredo.jp) Android SDK.

## Adding libwebrtc.aar file 

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
