import SwiftUI

/// TODO
public struct FlipDigits : View {
    
    /// TODO
    /// - Parameters:
    ///   - number: TODO
    ///   - minNumberOfDigits: TODO
    ///   - options: TODO
    public init(number: Binding<Int>, minNumberOfDigits: Int = 0, options: FlipDigitsOptions) {
        _number = number
        self.minNumberOfDigits = minNumberOfDigits
        self.options = options
    }
    
    /// TODO
    /// - Parameters:
    ///   - number: TODO
    ///   - minNumberOfDigits: TODO
    public init(number: Binding<Int>, minNumberOfDigits: Int = 0) {
        _number = number
        self.minNumberOfDigits = minNumberOfDigits
        self.options = .init()
    }
    
    @Binding var number : Int
    private let minNumberOfDigits : Int
    private let options : FlipDigitsOptions
    
    /// TODO
    public var body : some View {
        let digits = getDigits()
        return HStack(alignment:.center, spacing: options.cellSpacing) {
            ForEach(0..<digits.count, id:\.self) {idx in
                FlipDigitsCell(number: .constant(digits[idx]), options: options)
            }
        }
    }
    
    
    /// TODO
    /// - Returns: TODO
    private func getDigits() -> [Int] {
        number >= 0
        ?
        String(format:"%0\(minNumberOfDigits)d", number) .compactMap { Int($0.description) }
        :
        Array.init(repeating: 0, count: minNumberOfDigits)
    }
    
}
