<img src="https://www.nme.com/wp-content/uploads/2017/09/Mr-Brightside-video-696x442.jpg" width="200">

# react-native-brightside-auth

A react-native library to authorize users based on the presence of Mr. Brightside on their phone (in Music / Apple music).

## Suggested Use Cases
- Banking
- Stocks
- HIPAA Compliant applications
- The Killers app (They don't have one, but if they ever make one ill be sure to @ them on twitter)

## Getting started

### Installation - For yarn

`$ yarn add kaplantm/react-native-brightside-auth`

### Installation - For npm

`$ npm install --save kaplantm/react-native-brightside-auth`

### AutoLinking - For ReactNative >= 0.60.0

[ReactNative AutoLinking](https://github.com/react-native-community/cli/blob/master/docs/autolinking.md)

1. `cd ios && pod install`

## Usage


### Import
`import BrightsideAuth from 'react-native-use-health-kit';`

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

## Stop Mr. Brightside (not recommended)
```
BrightsideAuth.stop();
```

## Why does this library get installed as react-native-use-health-kit?

Because we stole and modified their code.

Thanks @yoshifumi4423
https://github.com/yoshifumi4423/react-native-use-health-kit#readme

## Why does this exist?
I don't know, why [is Mr. Brightside still in the UK charts?](http://ismrbrightsidestillintheukcharts.com/)

Also, [Boston Stupid Shit No One Needs & Terrible Ideas Hackathon](https://bostonstupidhackathon.com/)
