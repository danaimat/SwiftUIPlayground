import SwiftUI

struct Counter: View {
    @State var count = 0
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        Text(String(count))
            .font(.system(size: 36, weight: .bold, design: .rounded))
            .onReceive(timer) { input in
                count += 1
            }
    }
}

struct Counter_Previews: PreviewProvider {
    static var previews: some View {
        Counter()
    }
}
