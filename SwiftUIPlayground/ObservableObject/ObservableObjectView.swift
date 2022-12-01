import SwiftUI

struct ObservableObjectView: View {
    var body: some View {
        VStack(spacing: 40) {
            HStack {
                TapCounterObservedObjectView()
                    .frame(maxWidth: .infinity)

                Divider()
                
                TapCounterStateObjectView()
                    .frame(maxWidth: .infinity)
            }
            
            Divider()
            
            TapCounterWithStateOnParent()
        }
    }
}

struct ObservableObjectView_Previews: PreviewProvider {
    static var previews: some View {
        ObservableObjectView()
    }
}
