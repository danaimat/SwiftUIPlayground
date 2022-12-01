import SwiftUI

struct TransitionBottomSheet: View {
    @Binding var isShown: Bool
    
    var body: some View {
        Color.black.opacity(0.5)
            .edgesIgnoringSafeArea(.all)
            .transition(.asymmetric(insertion: .opacity, removal: .slide))
            .zIndex(1)
        
        VStack {
            Spacer()
            
            VStack(spacing: 0) {
                Capsule()
                    .fill(Color.white)
                    .frame(width: 37, height: 4)
                    .padding(.top, 10)
                
                Button("Set parent's showBottomSheet to false") {
                    withAnimation(.linear(duration: 1)) {
                        isShown = false
                    }
                }
                .buttonStyle(SecondButton())
                .padding(.top, 40)
            }
            .frame(maxWidth: .infinity, minHeight: 150, alignment: .top)
            .background(Color.purple)
            .foregroundColor(Color.white)
            .cornerRadius(12)
            .shadow(radius: 10)
            .frame(maxHeight: 300, alignment: .bottom)
        }
        .edgesIgnoringSafeArea(.all)
        .transition(.move(edge: .bottom))
        .zIndex(2)
    }
}

struct TransitionBottomSheet_Previews: PreviewProvider {
    static var previews: some View {
        TransitionBottomSheet(isShown: .constant(true))
    }
}
