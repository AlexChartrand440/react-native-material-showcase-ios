# React Native TapTargetView
React Native Bridge for [aromajoin/material-showcase-ios](https://github.com/aromajoin/material-showcase-ios)

Before we dive into on how to use this library. We would like to thank all the contributor of [aromajoin/material-showcase-ios](https://github.com/aromajoin/material-showcase-ios) for providing such a awesome nice, cool library


<img src="https://github.com/aromajoin/material-showcase-ios/blob/master/art/material-showcase.gif?raw=true" width="280" height="498" alt="Video 1"/>


## Installation

- `$ npm install react-native-material-showcase-ios --save`

- `$ react-native link react-native-material-showcase-ios`

#### [Manual Installation](./Installation.md)

## API's

- MaterialShowcase.forView: MaterialShowcaseTarget
~~~~
let materialShowcaseTarget = MaterialShowcase.forView(Button, {
    title: 'This is a target button 1',
    description: 'We have the best targets, believe me'
})

MaterialShowcaseView.ShowFor(materialShowcaseTarget)
~~~~

- MaterialShowcaseSequence
    - add(MaterialShowcaseTarget)
    - remove(MaterialShowcaseTarget)
    - removeAll
    - get(MaterialShowcaseTarget)
    - getAll

~~~~
let materialShowcaseSequence = new MaterialShowcaseSequence()
this.materialShowcaseTargets.forEach(materialShowcaseTarget => {
materialShowcaseSequence.add(materialShowcaseTarget)
})

MaterialShowcaseView.ShowSequence(materialShowcaseSequence)
~~~~

- MaterialShowcaseView
    - ShowFor(MaterialShowcaseTarget)
    - ShowSequence(MaterialShowcaseTargets)


# Contribution

Any type of contribution will be very much appreciated

# License

Copyright @2017 Pranav Raj Singh Chauhan

The React Native Material Showcase iOS is provided under the MIT License.
