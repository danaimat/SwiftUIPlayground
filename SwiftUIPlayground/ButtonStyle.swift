import SwiftUI

struct PrimaryButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        NewButtonStyle(
            label: configuration.label,
            isPressed: configuration.isPressed,
            colors: NewButtonStyle.Colors(
                background: Color.purple,
                foreground: Color.white
            )
        )
    }
}

struct SecondButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        NewButtonStyle(
            label: configuration.label,
            isPressed: configuration.isPressed,
            colors: NewButtonStyle.Colors(
                background: Color.orange,
                foreground: Color.black
            )
        )
    }
}


private struct NewButtonStyle: View {
    struct Colors {
        let background: Color
        let foreground: Color
    }
    
    let label: ButtonStyleConfiguration.Label
    let isPressed: Bool
    let colors: Colors
    
    var body: some View {
        label
            .padding()
            .background(colors.background)
            .foregroundColor(colors.foreground)
            .clipShape(Capsule())
            .scaleEffect(isPressed ? 0.8: 1)
            .animation(.spring(), value: isPressed)
    }
}
