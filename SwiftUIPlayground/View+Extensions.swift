import SwiftUI

extension View {
    // Disclaimer: Do not use modifiers like .applyIf - added here only to demonstrate the issue that causes
    @ViewBuilder
    func applyIf<M: View>(_ condition: Bool, transform: (Self) -> M) -> some View {
        if condition {
            transform(self)
        } else {
            self
        }
    }
}

extension View {
    func debug() -> Self {
        print(Mirror(reflecting: self).subjectType)
        return self
    }
}

extension View {
  func customBorderColor(_ color: Color) -> some View {
    environment(\.borderColor, color)
  }
}
