# APFlipDigits

![](https://img.shields.io/badge/swift-5.6-FA7343?style=flat-square)![](https://img.shields.io/badge/platform-iOS-blue?style=flat-square) ![](https://img.shields.io/badge/license-MIT-green?style=flat-square)![](https://img.shields.io/badge/iOS-13,14,15-white?style=flat-square)

<!-- <picture>
  <source media="(prefers-color-scheme: dark)" srcset="Assets/Presentation-Dark.gif">
  <img alt="Hero Image" src="Assets/Presentation-Light.gif">
</picture> -->

<div align="center">
<img alt="Hero Image" src="Assets/Presentation-Light.gif">
</div>
APFlip digits is a SwiftUI package that lets you create an animated view capable of displaying numbers!

Inspiration came from [this article](https://medium.com/@martin_8889/flutter-animated-multi-digit-display-1c9e45c99cfc)

## Features

<table>
  <tr>
    <th> Default </th>
    <th> Appearing Cells </th>
    <th> Negative Number </th>
    <th> Customization </th>
  </tr>
  <tr>
    <td>
      <img alt="Hero Image" src="Assets/Showcase-Light.gif">
    </td>
    <td>
      <img alt="Hero Image" src="Assets/Digits-Light.gif">
    </td>
    <td>
      <img alt="Hero Image" src="Assets/Negative-Light.gif">
    </td>
    <td>
      <img alt="Hero Image" src="Assets/CustomConfiguration-Light.gif">
    </td>
  </tr>
</table>

## Usage

`number` must be a `@State` property

```swift
import APFlipDigits
struct ContentView : View {

  @State private var number : Int = 100
  
  var body : some View {
    FlipDigits(number: $number, minNumberOfDigits: 3)
  }
}
```

`FlipDigit` view can be customized, specifying a `FlipDigitsOptions`, like in this example here

```swift
import APFlipDigits
struct ContentView : View {

  @State private var number : Int = 100

  var body : some View {
    FlipDigits(
      number: $number,
      minNumberOfDigits: 3, 
      options:.init(
        cellSize: 70,
        cellSpacing: 0,
        cellColor: .blue,
        foregroundColor: .yellow
      )
    )
  }

}
```

## Installation

## License

[MIT](LICENSE)
