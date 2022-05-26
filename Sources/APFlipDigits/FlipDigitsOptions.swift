import SwiftUI

/// Options to customize the appearence of ``FlipDigits`` view
public struct FlipDigitsOptions {
    
    let cellBackgroundColor : Color
    let cellSize: CGFloat
    let cellForegroundColor: Color
    let cellSpacing: CGFloat
    
    
    /// Initialize a new configuration
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
