# React Native Material Showcase iOS
React Native Bridge for [aromajoin/material-showcase-ios](https://github.com/aromajoin/material-showcase-ios)

Before we dive into on how to use this library. We would like to thank all the contributor of [aromajoin/material-showcase-ios](https://github.com/aromajoin/material-showcase-ios) for providing such a awesome nice, cool library


<img src="https://github.com/aromajoin/material-showcase-ios/blob/master/art/material-showcase.gif?raw=true" width="280" height="498" alt="Video 1"/>


#### Android Platform
Please refer [react-native-taptargetview](https://github.com/prscX/react-native-taptargetview) for the Android support


## Installation

- `$ npm install react-native-material-showcase-ios --save`

- `$ react-native link react-native-material-showcase-ios`

- Add [material-showcase-ios](https://github.com/aromajoin/material-showcase-ios) in Embedded Binaries & Linked Frameworks and Libraries. You can find this library from below path:

```node_modules/react-native-material-showcase-ios/ios/material-showcase-ios/MaterialShowcase.xcodeproj```

Please find below screenshot reference for the same:

<img src="https://raw.githubusercontent.com/prscX/react-native-material-showcase-ios/master/MaterialShowcaseExample/img/linking.png" alt="Video 1"/>


## API's

- AppTourView.for: AppTourTarget
~~~~
let appTourTarget = AppTourView.for(Button, {
    primaryText: 'This is a target button 1',
    secondaryText: 'We have the best targets, believe me'
})

> **Note:** App Tour Target Properties are same as defined by [KeepSafe/TapTargetView](https://github.com/KeepSafe/TapTargetView)


AppTour.ShowFor(appTourTarget)
~~~~

- AppTourSequence
    - add(AppTourTarget)
    - remove(AppTourTarget)
    - removeAll
    - get(AppTourTarget)
    - getAll

~~~~
let appTourSequence = new AppTourSequence()
this.appTourTargets.forEach(appTourTarget => {
appTourSequence.add(appTourTarget)
})

AppTour.ShowSequence(appTourSequence)
~~~~

- AppTour
    - ShowFor(AppTourTarget)
    - ShowSequence(AppTourTargets)


# Breaking Changes
- **0.0.2**: Changed API's to create same developer experience for both [react-native-material-showcase-ios](https://github.com/prscX/react-native-material-showcase-ios) & [react-native-taptargetview](https://github.com/prscX/react-native-taptargetview)

# Contribution

Any type of contribution will be very much appreciated

# License

Copyright @2017 Pranav Raj Singh Chauhan

The React Native Material Showcase iOS is provided under the MIT License.


## Other Contributions
- React Native - Spruce: [react-native-spruce](https://github.com/prscX/react-native-spruce)

![Screenshots](https://github.com/willowtreeapps/spruce-ios/raw/master/imgs/extensibility-tests.gif)

- React Native - App Tour Library: [react-native-taptargetview](https://github.com/prscX/react-native-taptargetview)

![Screenshots](https://github.com/KeepSafe/TapTargetView/raw/master/.github/video.gif)

- React Native - Bottom Action Sheet: [react-native-bottom-action-sheet](https://github.com/prscX/react-native-bottom-action-sheet)

![](https://github.com/rubensousa/BottomSheetBuilder/raw/master/screens/normal_demo.gif)

- React Native - Popover: [react-native-popover-menu](https://github.com/prscX/react-native-popover-menu)

![](https://github.com/zawadz88/MaterialPopupMenu/raw/master/art/components_menus.png)

- React Native - Shine Button: [react-native-shine-button](https://github.com/prscX/react-native-shine-button)

![Screenshots](https://raw.githubusercontent.com/ChadCSong/ShineButton/master/demo_shine_others.gif)

- React Native Iconic: [react-native-iconic](https://github.com/prscX/react-native-iconic)
![Screenshots](https://camo.githubusercontent.com/b18993cbfe91de8abdc0019dc9a6cd44707eec21/68747470733a2f2f6431337961637572716a676172612e636c6f756466726f6e742e6e65742f75736572732f3338313133332f73637265656e73686f74732f313639363538302f766266706f70666c6174627574746f6e332e676966)

- React Native Download Button: [react-native-download-button](https://github.com/prscX/react-native-download-button)

![](https://github.com/fenjuly/ArrowDownloadButton/raw/master/screenshots/arrowdownloadbutton.gif)

- React Native Siri Wave View: [react-native-siri-wave-view](https://github.com/prscX/react-native-siri-wave-view)

![](https://cdn.dribbble.com/users/341264/screenshots/2203511/wave.gif)

- Visual Code Essential Plugins: [vs-essential-plugins](https://github.com/prscX/vs-essential-plugins)

![Screenshots](https://pbs.twimg.com/profile_images/922911523328081920/jEKFRPKV_400x400.jpg)

- Prettier Pack: [prettier-pack](https://github.com/prscX/prettier-pack)

![Screenshots](https://raw.githubusercontent.com/prettier/prettier-logo/master/images/prettier-banner-light.png)
