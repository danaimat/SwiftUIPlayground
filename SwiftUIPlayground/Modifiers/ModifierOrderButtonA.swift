import SwiftUI

struct ModifierOrderButtonA: View {
    var body: some View {
        Button(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/) {
            print(type(of: self.body))
        }
        .background(Color.red)
        .frame(width: 150, height: 150)
    }
}

struct ButtonA_Previews: PreviewProvider {
    static var previews: some View {
        ModifierOrderButtonA()
    }
}
