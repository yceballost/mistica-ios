<img alt="Mística for iOS" src="./mistica-ios.svg">
<br>

[![Platform](https://img.shields.io/badge/platform-iOS-%23989898.svg)](https://github.com/Telefonica/mistica-ios)
[![iOS Version](https://img.shields.io/badge/Support-%3E%3D%20iOS%2012.0-brightgreen.svg)](https://github.com/Telefonica/mistica-ios)
[![Languages](https://img.shields.io/badge/languages-Swift-orange.svg)](https://github.com/Telefonica/mistica-ios)
[![Swift Package Manager compatible](https://img.shields.io/badge/Swift%20Package%20Manager-compatible-brightgreen.svg)](https://github.com/apple/swift-package-manager)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-59C939.svg?style=flat)](https://github.com/Carthage/Carthage)
[![Cocoapods compatible](https://img.shields.io/badge/CocoaPods-compatible-59C939.svg?style=flat)](https://cocoapods.org/)

Mistica is a framework that contains reusable UI components and utilities for the Telefonica Design System ([Mistica](https://github.com/Telefonica/mistica))

- [Installation](#installation)
  - [Swift Package Manager](#swift-package-manager)
  - [Carthage](#carthage)
  - [Cocoapods](#cocoapods)
- [Configuration](#configuration)
- [Fonts](#fonts)
- [Components](#components)
- [Demo app](#demo-app)
- [Contributing](#contributing)

## Installation

### Swift Package Manager

You can add Mistica to an Xcode project by adding it as a package dependency.

1. From the **File** menu, select **Swift Package** > **Add Package Dependency**.
2. Enter "[https://github.com/Telefonica/mistica-ios](https://github.com/Telefonica/mistica-ios)" into the package repository URL text field.
3. From the **Add Package to App** window, select **Mistica** library.

You also can integrate Mitica to Swift Package, add the following as a dependency to your `Package.swift`:

```swift
.package(name: "Mistica", url: "https://github.com/Telefonica/mistica-ios.git", .from("2.0.0"))
```

and then specify `"Mistica"` as a dependency of the Target in which you wish to use Mistica.

### Carthage

Add Mistica to your `Cartfile`:

```
github "Telefonica/mistica-ios"
```

And then run:

```
carthage update --platform iOS --use-ssh --use-xcframeworks
```

> More information about Carthage integration [here](https://github.com/Carthage/Carthage#if-youre-building-for-ios-tvos-or-watchos)

### Cocoapods

Add Mistica to your `Podfile`:

```
pod 'Mistica', :git => 'git@github.com:Telefonica/mistica-ios.git'
```

And then run:

```
pod install
```

## Configuration

By default the framework components are created with the Movistar's brand style and the `standard` theme variant, to select a different one, configure the brand style and/or variant:

```swift
MisticaConfig.brandStyle = .o2
MisticaConfig.themeVariant = .prominent
```

Remember to initialize Mistica with you desired brand style before the initialize the UI of your app.

In applications before iOS 13, the initialziation should be done in the **UIApplicationDelegate**,

```swift
func application(_: UIApplication, didFinishLaunchingWithOptions _: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    // Set up Mistica
    MisticaConfig.brandStyle = .vivo

    return true
}
```

For applications in iOS 13 and above, the initialization should be done in the **SceneDelegate**

```swift
func scene(_ scene: UIScene, willConnectTo _: UISceneSession, options _: UIScene.ConnectionOptions) {
    guard let windowScene = (scene as? UIWindowScene) else { return }

    // Configure brand style before initializing the UI
    MisticaConfig.brandStyle = .movistar
}
```

Every component in mistica supports dark mode. In order to configure dark mode in you app, you can follow [Apple guidelines](https://developer.apple.com/documentation/xcode/supporting_dark_mode_in_your_interface/choosing_a_specific_interface_style_for_your_ios_app).

## Fonts

By default mistica uses the system font, but if you need to use a custom font (Telefonica font, On-Air, etc) you can follow [these instructions](./Mistica/Source/Fonts/).

## Components

* [Badge](./Mistica/Source/Components/Badge/)
* [Button](./Mistica/Source/Components/Button/)
* [Cards](./Mistica/Source/Components/Cards/)
	* [DataCard](./Mistica/Source/Components/Cards/#datacard)
	* [MediaCard](./Mistica/Source/Components/Cards/#mediacard)
	* [HighlightedCard](./Mistica/Source/Components/Cards/#highlightedcard)
* [Checkbox](./Mistica/Source/Components/Checkbox/)
* [Controls](./Mistica/Source/Components/Controls/)
* [Crouton](./Mistica/Source/Components/Crouton/)
* [EmptyState](./Mistica/Source/Components/EmptyState/)
* [Feedbacks](./Mistica/Source/Components/Feedback/)
* [Filter](./Mistica/Source/Components/Filter/)
* [Form](./Mistica/Source/Components/Form/)
* [Header](./Mistica/Source/Components/Header/)
* [InputFields](./Mistica/Source/Components/InputField/)
* [Lists](./Mistica/Source/Components/Lists/)
* [NavigationBar](./Mistica/Source/Components/NavigationBar/)
* [Popover](./Mistica/Source/Components/Popover/)
* [RadioButton](./Mistica/Source/Components/RadioButton/)
* [ScrollContentIndicator](./Mistica/Source/Components/ScrollContentIndicator/)
* [SectionTitle](./Mistica/Source/Components/SectionTitle/)
* [Stepper](./Mistica/Source/Components/Stepper/)
* [Switch](./Mistica/Source/Components/Switch/)
* [Tabs](./Mistica/Source/Components/Tabs)
* [Tag](./Mistica/Source/Components/Tag/)
* [ViewStates](./Mistica/Source/Components/ViewStates/)

## Demo app
Included in this repository there's a demo app showcasing all implemented components. With each new release, a new version of the mistica catalog app is created. It can be installed with this [link](https://install.appcenter.ms/orgs/tuenti-organization/apps/mistica-ios/distribution_groups/public) or by using the following QR:

<p align="center">
<img height="175" align="center" alt="Mística Catalog for iOS" src="./doc/images/mistica-catalog-download-qr.png">
</p>

## Contributing

See [CONTRIBUTING.md](./CONTRIBUTING.md)
