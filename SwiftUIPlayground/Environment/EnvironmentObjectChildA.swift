import SwiftUI

struct EnvironmentObjectChildA: View {
    var body: some View {
        VStack{
            Text("Child A")
            
            EnvironmentObjectChildB()
        }
        .padding()
        .border(Color.black, width: 1)
    }
}
