import SwiftUI

struct ModifiersOrderView: View {
    var body: some View {
        VStack {
            HStack {
                VStack {
                    Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                        .background(Color.purple)
                        .frame(width: 150, height: 150)
                        .debug()
                    
                    Text(".background before .frame")
                }
                Divider()
                VStack {
                    Text("Hello, World!")
                        .frame(width: 150, height: 150)
                        .background(Color.purple)
                        .debug()
                    
                    Text(".background after .frame")
                }
            }
            
            Divider()
                .padding()
            
            Text("Hello, world!")
                .padding()
                .background(Color.red)
                .padding()
                .background(Color.blue)
                .padding()
                .background(Color.green)
                .padding()
                .background(Color.yellow)
        }
    }
}

struct ModifiersOrderView_Previews: PreviewProvider {
    static var previews: some View {
        ModifiersOrderView()
    }
}
