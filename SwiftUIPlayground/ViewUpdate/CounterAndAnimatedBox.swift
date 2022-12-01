import SwiftUI

struct CounterAndAnimatedBox: View {
    @State var count = 0
    @State var animation = false
    
//    let leftOffset = Double.random(in: -100...(-30))
//    let rightOffest = Double.random(in: 30...100)
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
//        let _ = Self._printChanges()
        VStack {
            Text(String(count))
                .font(.system(size: 36, weight: .bold, design: .rounded))
                .onReceive(timer) { input in
                    count += 1
                }
            
            Circle()
                .fill(Color.purple)
                .frame(width: 100, height: 100)
                .offset(x: animation ? Double.random(in: -100...(-30)) : Double.random(in: 30...100))
//                .offset(x: animation ? leftOffset : rightOffest)
                .onAppear {
                    withAnimation(.linear(duration: 1.5).repeatForever()) {
                        animation.toggle()
                    }
                }
        }
    }
}

struct CounterAndAnimatedBox_Previews: PreviewProvider {
    static var previews: some View {
        CounterAndAnimatedBox()
    }
}
