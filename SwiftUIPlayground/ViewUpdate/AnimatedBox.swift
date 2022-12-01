import SwiftUI

struct AnimatedBox: View {
    @State var animation = false
    
    var body: some View {
        Circle()
            .fill(Color.purple)
            .frame(width: 100, height: 100)
            .offset(x: animation ? Double.random(in: -100...(-30)) : Double.random(in: 30...100))
            .onAppear {
                withAnimation(.linear(duration: 2).repeatForever()) {
                    animation.toggle()
                }
            }
    }
}

struct AnimatedBox_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            AnimatedBox()
            AnimatedBox()
            AnimatedBox()
        }
    }
}
