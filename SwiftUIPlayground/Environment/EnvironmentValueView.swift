import SwiftUI

struct EnvironmentValueView: View {
    @Environment(\.borderColor) var borderColor: Color
    
    var body: some View {
        VStack{
            Text("Parent View")

            Text("Set lineLimit and custom borderColor values on parent view...")
                .font(.system(size: 16, weight: .bold, design: .rounded))
                .padding(.bottom)
            
            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
            
            EnvironmentValueChildA()
        }
        .padding()
        .border(borderColor, width: 3)
        .environment(\.lineLimit, 2)
//        .lineLimit(2)
    }
}

struct EnvironmentValueView_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentValueView()
    }
}
