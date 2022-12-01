import SwiftUI

struct EnvironmentObjectChildB: View {
    var body: some View {
        VStack{
            Text("Child B")
            
            EnvironmentObjectChildC()
            //                    .environmentObject(ThemeColors(color: Color.orange))
        }
        .padding()
        .border(Color.black, width: 1)
    }
}
