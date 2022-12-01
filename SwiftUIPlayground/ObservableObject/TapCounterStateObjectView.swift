import SwiftUI

struct TapCounterStateObjectView: View {
    @StateObject var tapCounter = TapCounter()
    
    init() {
        print("TapCounterStateObjectView init")
    }

    var body: some View {
        VStack {
            Text("TapCounter with @StateObject")
            
            Text(String(tapCounter.count))
                .font(.system(size: 36, weight: .bold, design: .rounded))
            
            Button("Tap me!") {
                tapCounter.incrementCounter()
            }
            .buttonStyle(PrimaryButton())
        }
    }
}

struct SecondTapCounterView_Previews: PreviewProvider {
    static var previews: some View {
        TapCounterStateObjectView()
    }
}
