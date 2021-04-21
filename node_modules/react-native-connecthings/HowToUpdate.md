# react-native-connecthings

## Update the version

### Android

Update the Herow SDK version in the build.gradle.
Take the time to update the project on the last gradle version and on the last android plugin version.

### iOS

Update the Herow SDK version in the Podfile.
You also need to update the RNConnecthings.podspec file. You will need to update the URL based on the version deploy on [forge](https://forge.herow.io/pub/Specs/-/tree/master/HerowLocationDetection) and the version of dependencies.
Take the time to check that the swift version defines in the Podfile matches the one of the SDK.

### React

Check if it is usefull to update the reaction version (package.json)

## Publish

* run '''npm version 7.5.0''' to publish the 7.5 version of the plugin. It will create a tag with the new increased plugin version.
* Go on jenkins.connecthings.com
* Select the "TOUS" tab
* Click on deploy_react-native-connecthings

## Update the demo project

* Next update the [react-app-demo](git@github.com:Connecthings/react-app-demo.git) with the last plugin version
* In the demo project, update the version of the SDK for the demo Android App and the demo iOs App.

## Getting started

`$ npm install react-native-connecthings --save`

### Mostly automatic installation

`$ react-native link react-native-connecthings`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-connecthings` and add `RNConnecthings.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNConnecthings.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.RNConnecthingsPackage;` to the imports at the top of the file
  - Add `new RNConnecthingsPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-connecthings'
  	project(':react-native-connecthings').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-connecthings/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-connecthings')
  	```
