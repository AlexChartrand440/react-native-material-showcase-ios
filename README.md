
# react-native-material-showcase

## Getting started

`$ npm install react-native-material-showcase --save`

### Mostly automatic installation

`$ react-native link react-native-material-showcase`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-material-showcase` and add `RNMaterialShowcase.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNMaterialShowcase.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.RNMaterialShowcasePackage;` to the imports at the top of the file
  - Add `new RNMaterialShowcasePackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-material-showcase'
  	project(':react-native-material-showcase').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-material-showcase/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-material-showcase')
  	```

#### Windows
[Read it! :D](https://github.com/ReactWindows/react-native)

1. In Visual Studio add the `RNMaterialShowcase.sln` in `node_modules/react-native-material-showcase/windows/RNMaterialShowcase.sln` folder to their solution, reference from their app.
2. Open up your `MainPage.cs` app
  - Add `using Material.Showcase.RNMaterialShowcase;` to the usings at the top of the file
  - Add `new RNMaterialShowcasePackage()` to the `List<IReactPackage>` returned by the `Packages` method


## Usage
```javascript
import RNMaterialShowcase from 'react-native-material-showcase';

// TODO: What to do with the module?
RNMaterialShowcase;
```
  