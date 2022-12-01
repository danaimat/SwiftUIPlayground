import SwiftUI

struct EnvironmentObjectView: View {
    @StateObject var themeColors = ThemeColors(color: Color.purple)
    
    var body: some View {
        VStack{
            Text("Parent View")
                .font(.system(size: 18, weight: .bold, design: .rounded))
                .foregroundColor(themeColors.color)
            Text("An environment object is defined at a higher-level view...")
            
            EnvironmentObjectChildA()
        }
        .padding()
        .border(Color.black, width: 1)
        // Test the hierarchy of environment object
//                .environmentObject(ThemeColors(color: Color.orange))
        .environmentObject(themeColors)
    }
}

struct EnvironmentObjectView_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObjectView()
    }
}
