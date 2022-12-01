import SwiftUI

struct EnvironmentObjectChildC: View {
    @EnvironmentObject var themeColors: ThemeColors
    
    var body: some View {
        VStack{
            Text("Child C")
                .font(.system(size: 18, weight: .bold, design: .rounded))
                .foregroundColor(themeColors.color)
            Text("...and any child view can access it if needed.")
        }
        .padding()
        .border(Color.black, width: 1)
    }
}
