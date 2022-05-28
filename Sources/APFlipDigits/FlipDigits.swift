import SwiftUI

/// The view that actually displays and animates the digits
///
/// ```swift
/// import SwiftUI
/// import APFlipDigits
/// struct ContentView : View {
///
///   @State private var number : Int = 100
///
///   var body : some View {
///     FlipDigits(number: $number, minNumberOfDigits: 3)
///   }
/// }
/// ```
public struct FlipDigits : View {
    
    /// Initialize a new view specifying the `number` to be displayed, the minimum number of digits the view can handle and a custom view configuration
    /// - Parameters:
    ///   - number: The number to be displayed
    ///   - minNumberOfDigits: Minimum number of digits to be displayed
    ///   - options: Customization options
    public init(number: Binding<Int>, minNumberOfDigits: Int = 0, options: FlipDigitsOptions) {
        _number = number
        self.minNumberOfDigits = minNumberOfDigits
        self.options = options
    }
    
    /// Initialize a new view specifying the `number` to be displayed and the minimum number of digits the view can handle
    /// - Parameters:
    ///   - number: The number to be displayed
    ///   - minNumberOfDigits: Minimum number of digits to be displayed
    public init(number: Binding<Int>, minNumberOfDigits: Int = 0) {
        _number = number
        self.minNumberOfDigits = minNumberOfDigits
        self.options = .init()
    }
    
    /// The number displayed by the view
    @Binding var number : Int
    private let minNumberOfDigits : Int
    private let options : FlipDigitsOptions
    
    /// The actual view
    public var body : some View {
        let digits = getDigits()
        return HStack(alignment:.center, spacing: options.cellSpacing) {
            ForEach(0..<digits.count, id:\.self) {idx in
                FlipDigitsCell(number: .constant(digits[idx]), options: options)
            }
        }
    }
    
    private func getDigits() -> [Int] {
        number >= 0
        ?
        String(format:"%0\(minNumberOfDigits)d", number) .compactMap { Int($0.description) }
        :
        Array.init(repeating: 0, count: minNumberOfDigits)
    }
    
}
