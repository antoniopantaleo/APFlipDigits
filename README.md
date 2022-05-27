# APFlipDigits

![](https://img.shields.io/badge/swift-5.6-FA7343?style=flat-square)
![](https://img.shields.io/badge/platform-iOS-blue?style=flat-square) 
![](https://img.shields.io/badge/license-MIT-green?style=flat-square)
![](https://img.shields.io/badge/iOS-13,14,15-white?style=flat-square)

<picture>
  <source media="(prefers-color-scheme: dark)" srcset="Assets/Presentation-Dark.gif">
  <img alt="Hero Image" src="Assets/Presentation-Light.gif">
</picture>

APFlip digits is a SwiftUI package 

## Features

<table>
  <tr>
    <th> Standard </th>
    <th> Standard </th>
    <th> Standard </th>
    <th> Standard </th>
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

```swift
import APFlipDigits

struct ContentView : View {

  @State private var number : Int = 100

  var body : some View {
    FlipDigits(number: $number, minNumberOfDigits: 3)
  }

}
```

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