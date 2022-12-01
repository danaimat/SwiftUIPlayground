import SwiftUI

struct TransitionView: View {
    @State private var showBottomSheet = false
    
    var body: some View {
        ZStack {
            VStack {
                Button("Toggle showBottomSheet") {
                    withAnimation(.linear(duration: 1)) {
                        showBottomSheet.toggle()
                    }
                }
                .buttonStyle(PrimaryButton())
            }
            
            if showBottomSheet {
                TransitionBottomSheet(isShown: $showBottomSheet)
            }
            
        }
    }
}

struct TransitionView_Previews: PreviewProvider {
    static var previews: some View {
        TransitionView()
    }
}
