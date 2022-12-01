import SwiftUI

struct TapCounterWithStateOnParent: View {
    @State var hasBackgroundColor = false
    
    
    init() {
        print("TapCounterWithStateOnParent init")
    }
    
    var body: some View {
        VStack {
            Text("When the @State of the parent that contains a view with @ObservedObject changes, ObservableObject will be initialized")
                .font(.system(size: 18, weight: .bold, design: .rounded))
            
            Toggle("Background color", isOn: $hasBackgroundColor)
                .padding(.bottom)

            
            HStack {
                TapCounterObservedObjectView()
                    .frame(maxWidth: .infinity)

                Divider()
                
                TapCounterStateObjectView()
                    .frame(maxWidth: .infinity)
            }
        
        }
        .padding()
        .frame(maxHeight: .infinity)
        .background(hasBackgroundColor ? Color.orange : Color.clear)
    }
}

struct TapCounterWithStateOnParent_Previews: PreviewProvider {
    static var previews: some View {
        TapCounterWithStateOnParent()
    }
}
