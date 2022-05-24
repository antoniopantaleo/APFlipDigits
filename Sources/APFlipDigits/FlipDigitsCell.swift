import SwiftUI

struct FlipDigitsCell: View {
    
    init(number: Binding<Int>, options: FlipDigitsOptions) {
        _number = number
        self.options = options
    }
    
    @Binding var number : Int
    private let options : FlipDigitsOptions
    
    var body: some View {
        VStack(alignment:.center, spacing: 0) {
            ForEach(0..<10) { i in
                Text("\(i)")
                    .font(.system(size: options.cellSize))
                    .foregroundColor(options.cellForegroundColor)
                    .frame(width:options.cellSize, height:options.cellSize)
                    .background(options.cellBackgroundColor)
            }
        }
        .offset(x:0,y: CGFloat(10 - (number*2 + 1)) * options.cellSize/2)
        .frame(width: options.cellSize, height: options.cellSize)
        .clipped()
        .animation(.default, value: number)
    }
}
