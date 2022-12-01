import SwiftUI

struct ExplicitAnimation: View {
    @State var offsetLeft = false
    
    var body: some View {
        VStack {
            Text("withAnimation on the button action")
            
            Text("withAnimation(.linear(duration: 0.5))")
            
            Circle()
                .fill(Color.purple)
                .frame(width: 100, height: 100)
                .offset(x: offsetLeft ? -100 : 100)
            
            HStack {
                Button("Left") {
                    withAnimation(.linear(duration: 0.5)) {
                        offsetLeft = true
                    }
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

struct ExplicitAnimation_Previews: PreviewProvider {
    static var previews: some View {
        ExplicitAnimation()
    }
}
