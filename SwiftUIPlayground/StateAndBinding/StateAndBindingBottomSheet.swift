import SwiftUI

struct StateAndBindingBottomSheet: View {
    @Binding var isShown: Bool
    
    var body: some View {
        VStack {
            Spacer()
            
            VStack(spacing: 0) {
                Capsule()
                    .fill(Color.white)
                    .frame(width: 37, height: 4)
                    .padding(.top, 10)
                
                Button("Set parent's showBottomSheet to false") {
                    isShown = false
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
    }
}

struct StateAndBindingBottomSheet_Previews: PreviewProvider {
    static var previews: some View {
        StateAndBindingBottomSheet(isShown: .constant(true))
    }
}
