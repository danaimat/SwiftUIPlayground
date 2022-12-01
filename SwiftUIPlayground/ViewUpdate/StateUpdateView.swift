import SwiftUI

struct StateUpdateView: View {
    var body: some View {
        VStack {
            Text("Combined views")
            
            CounterAndAnimatedBox()
            
            Divider()
                .padding(.vertical, 40)
            
            Text("Splitted views")
            
            Counter()
            
            AnimatedBox()
        }
    }
}

struct StateUpdateView_Previews: PreviewProvider {
    static var previews: some View {
        StateUpdateView()
    }
}
