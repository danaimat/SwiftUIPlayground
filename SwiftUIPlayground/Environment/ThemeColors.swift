import SwiftUI

class ThemeColors: ObservableObject {
    @Published var color: Color
    
    init(color: Color) {
        self.color = color
    }
}
