import SwiftUI

struct ImplicitAnimationWithValue: View {
    @State var offsetLeft = false
    
    var body: some View {
        VStack {
            Text(".animation modifier with value")
            
            Text(".animation(.linear(duration: 0.5), value: offsetLeft)")
            
            Circle()
                .fill(Color.purple)
                .frame(width: 100, height: 100)
                .offset(x: offsetLeft ? -100 : 100)
                .animation(.linear(duration: 0.5), value: offsetLeft)
            
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

struct ImplicitAnimationWithValue_Previews: PreviewProvider {
    static var previews: some View {
        ImplicitAnimationWithValue()
    }
}
