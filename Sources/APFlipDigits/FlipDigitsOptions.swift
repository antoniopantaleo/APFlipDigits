import SwiftUI

/// Options to customize the appearence of ``FlipDigits`` view
///
/// Available customizations:
/// - `cellSize`: The dimension of the single digit cell
/// - `cellSpacing`: The distance between the cells
/// - `cellBackgroundColor`: The color of the cell
/// - `cellForegroundColor`: The color of the number displayed in the cell
///
///  # Example
///```swift
/// FlipDigitsOptions(
///   cellSize: 70,
///   cellSpacing: 0,
///   cellColor: Color.blue,
///   foregroundColor: Color.yellow
/// )
/// ```
public struct FlipDigitsOptions {
    
    let cellBackgroundColor : Color
    let cellSize: CGFloat
    let cellForegroundColor: Color
    let cellSpacing: CGFloat
    
    
    /// Initialize a new ``FlipDigitsOptions`` configuration
    /// - Parameters:
    ///   - cellSize: Dimension of the single digit cell
    ///   - cellSpacing: Distance betweens cells
    ///   - cellBackgroundColor: The color of the cells
    ///   - cellForegroundColor: The color of the number digit displayed in the cell
    public init(cellSize: CGFloat? = 50, cellSpacing: CGFloat? = 10, cellBackgroundColor: Color? = .black, cellForegroundColor: Color? = .white) {
        self.cellBackgroundColor = cellBackgroundColor ?? .black
        self.cellSize = cellSize ?? 50
        self.cellForegroundColor = cellForegroundColor ?? .white
        self.cellSpacing = cellSpacing ?? 10
    }
}
