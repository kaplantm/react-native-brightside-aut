# react-native-brightside-auth

## Getting started

### Installation - For yarn

`$ yarn add kaplantm/react-native-brightside-auth`

### Installation - For npm

`$ npm install --save kaplantm/react-native-brightside-auth`

### AutoLinking - For ReactNative >= 0.60.0

[ReactNative AutoLinking](https://github.com/react-native-community/cli/blob/master/docs/autolinking.md)

1. `cd ios && pod install`

## Usage

### Initialize Brightside Auth and get Music Permissions Status
Startup also takes parameters to configure desired song and artist for authorization check.
```
    const musicPermissionsStatus = await new Promise((resolve, reject) => {
      BrightsideAuth.startup({
          title: 'Mr. Brightside',
          artist: 'The Killers'
        }, value => {
        resolve(value);
      });
    });
```
These parameters are ignored, because we always check for Mr. Brightside

### Check for Mr. Brightside
```
   const hasMrBrightsideStatus = await new Promise((resolve, reject) => {
        BrightsideAuth.checkForMrBrightside(async value => {
          resolve(value);
        });
      });
```

## Play Mr. Brightside
```
BrightsideAuth.play();
```

## Why does this library get installed as react-native-use-health-kit?

Because we stole and modified their code.

Thanks @yoshifumi4423
https://github.com/yoshifumi4423/react-native-use-health-kit#readme
