import SwiftUI

/// FlipDigitsOptions description here
public struct FlipDigitsOptions {
    
    let cellBackgroundColor : Color
    let cellSize: CGFloat
    let cellForegroundColor: Color
    let cellSpacing: CGFloat
    
    
    /// TODO
    /// - Parameters:
    ///   - cellSize: TODO
    ///   - cellSpacing: TODO
    ///   - cellBackgroundColor: TODO
    ///   - cellForegroundColor: TODO
    public init(cellSize: CGFloat? = 50, cellSpacing: CGFloat? = 10, cellBackgroundColor: Color? = .black, cellForegroundColor: Color? = .white) {
        self.cellBackgroundColor = cellBackgroundColor ?? .black
        self.cellSize = cellSize ?? 50
        self.cellForegroundColor = cellForegroundColor ?? .white
        self.cellSpacing = cellSpacing ?? 10
    }
}
