import SwiftUI

private struct BorderColor: EnvironmentKey {
    static let defaultValue = Color.purple
}

extension EnvironmentValues {
  var borderColor: Color {
    get { self[BorderColor.self] }
    set { self[BorderColor.self] = newValue }
  }
}
