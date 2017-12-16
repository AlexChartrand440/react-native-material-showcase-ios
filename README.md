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
