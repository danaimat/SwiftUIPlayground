import SwiftUI

struct TapCounterObservedObjectView: View {
    @ObservedObject var tapCounter = TapCounter()
    
    init() {
        print("TapCounterObservedObjectView init")
    }
    
    var body: some View {
        VStack {
            Text("TapCounter with @ObservedObject")
            
            Text(String(tapCounter.count))
                .font(.system(size: 36, weight: .bold, design: .rounded))
            
            Button("Tap me!") {
                tapCounter.incrementCounter()
            }
            .buttonStyle(PrimaryButton())
        }
    }
}

struct TapCounterObservedObjectView_Previews: PreviewProvider {
    static var previews: some View {
        TapCounterObservedObjectView()
    }
}
