import SwiftUI

struct StateAndBindingView: View {
    @State private var showBottomSheet = false
    
    var body: some View {
        ZStack {
            VStack {
                Text("showBottomSheet state on parent is:")
                
                Text(String(showBottomSheet))
                    .font(.system(size: 36, weight: .bold, design: .rounded))
                
                Button("Toggle showBottomSheet") {
                    showBottomSheet.toggle()
                }
                .buttonStyle(PrimaryButton())
            }
            
            if showBottomSheet {
                StateAndBindingBottomSheet(isShown: $showBottomSheet)
            }
            
        }
    }
}

struct StateAndBindingView_Previews: PreviewProvider {
    static var previews: some View {
        StateAndBindingView()
    }
}
