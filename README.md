# react-native-connecthings


## Usage

Please refer to our [react-native tutorial](https://docs.herow.io/sdk/6.2/ios/cross-platform-react-native.html).

## React bridge change log
### 7.0.0 - April 20th
- Update iOS and Android versions to 7.0.0

### 6.3.3 - February 19 th
- Update Android version to 6.3.1

### 6.3.0 - February 8th
- Update iOS version to 6.3.0 and Android versions to 6.3.0

### 6.2.3 - November 30th
- Update iOS version to 6.2.3 and Android versions to 6.2.2

### 6.2.2 - July 30th
- Update iOS and Android versions to 6.2.1

### 6.2.1 - June 18th
- iOS: Add a synchronize immediatly after optins update

### 6.2.0 - June 11th
- Update iOS and Android versions to 6.2.0


## Add the plugin to your project

* Add the plugin to your npm dependecies:
```
npm install react-native-connecthings@^7.0.0 --save
```

* The plugin support autolink since version 5.1.3, so no need to run link command.

>**Note:**
>
> Starting from version 5.1.3 of the Connecthings React Native plugin, you need to use AndroidX and a recent version of React Native (0.60.X and above).
> If you still want to use old versions of React Rative (0.59.10 and below), you can use the Connecthings React Native plugin version 5.1.1
> Autolink is supported only in the versions compatible with React Native 0.60.X and more. When using 5.1.1 version or less of the plugin, you will need to manually link the plugin.  
<!--{blockquote:.note}-->

>**Note:**
>
> If you are migrating your project from React Native 0.59.X to 0.60.X and more, you will need to run **unlink** command
> `react-native unlink react-native-connecthings`
> You will need to read [the official React Native blog post about the major 0.60 release](https://facebook.github.io/react-native/blog/2019/07/03/version-60) and check their [upgrade helper](https://react-native-community.github.io/upgrade-helper/?from=0.59.10&to=0.61.4) .
<!--{blockquote:.note}-->
## Initialize the SDK

Follow the [iOS](https://docs.herow.io/sdk/6.2/ios/5-minutes-quickstart.html) and [Android](https://docs.herow.io/sdk/6.2/android/5-minutes-quickstart.html) minutes quickstart to initialize the SDK
at the native app level.


## Being compliant with GDPR

The following methods allow your application to be compliant to GDPR.

You can find out more about this by reading our [GDPR tutorial](being-compliant-with-gdpr.html).

```javascript
import RNConnecthings from 'react-native-connecthings';

RNConnecthings.acceptOptin();
or if you want to refuse
RNConnecthings.refuseOptin();

```
## Launch or stop ClickAndCollect Mode

## Setting custom user ID

The following method allow you to set a custom user ID.
```javascript
RNConnecthings.setCustomId("customUserIdentifier");
```



