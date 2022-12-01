import SwiftUI

struct ModifiersOrderBottomSheet: View {
    var body: some View {
        VStack {
            Spacer()
            
            VStack(spacing: 0) {
                Capsule()
                    .fill(Color.white)
                    .frame(width: 37, height: 4)
                    .padding(.top, 10)
                
                
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//                Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
                    .fixedSize(horizontal: false, vertical: true)
                    .padding()
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

struct ModifiersOrderBottomSheet_Previews: PreviewProvider {
    static var previews: some View {
        ModifiersOrderBottomSheet()
    }
}
