import SwiftUI

struct ImplicitAnimation: View {
    @State var offsetLeft = false
    
    var body: some View {
        VStack {
            Text(".animation modifier")
            
            Text(".animation(.linear(duration: 0.5))")
            
            Circle()
                .fill(Color.purple)
                .frame(width: 100, height: 100)
                .offset(x: offsetLeft ? -100 : 100)
                .animation(.linear(duration: 0.5))
            
            HStack {
                Button("Left") {
                    offsetLeft = true
                }
                .buttonStyle(SecondButton())
                
                Spacer()
                
                Button("Right") {
                    offsetLeft = false
                }
                .buttonStyle(SecondButton())
            }
            .padding()
        }
    }
}

struct ImplicitAnimation_Previews: PreviewProvider {
    static var previews: some View {
        ImplicitAnimation()
    }
}
