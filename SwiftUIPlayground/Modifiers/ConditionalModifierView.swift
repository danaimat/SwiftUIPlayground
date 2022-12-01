import SwiftUI

struct ConditionalModifierView: View {
    @State var hasFixedWidth = false
    @State var hasColor = false
    
    var body: some View {
        VStack {
            VStack {
                Toggle("Square element", isOn: $hasFixedWidth.animation())
                
                Text(".applyIf modifier is used")
                
                Rectangle()
                    .fill(Color.purple)
                    .frame(height: 100)
                    .applyIf(hasFixedWidth) { $0.frame(width: 100) }
                    .debug()
                
                Divider()
                    .padding(.vertical)
                
                Text(".applyIf modifier is not used")
                
                Rectangle()
                    .fill(Color.purple)
                    .frame(height: 100)
                    .frame(width: hasFixedWidth ? 100 : nil)
                    .debug()
            }
            .padding()
            
            Divider()
                .padding(.vertical)
            
            VStack {
                Toggle("TextField with color", isOn: $hasColor)
                
                TestTextField()
                    .padding()
                    .applyIf(hasColor) { $0.border(Color.purple, width: 2) }
            }
            .padding()
            
            Text("Disclaimer: Do not use modifiers like .applyIf - added here only to demonstrate the issue that causes")
                .padding()
                .font(.system(size: 18, weight: .bold, design: .rounded))
                .foregroundColor(Color.orange)
        }
    }
}

struct TestTextField: View {
    @State var input: String = ""
    
    var body: some View {
        TextField("My Field", text: $input)
    }
}

struct ConditionalModifier_Previews: PreviewProvider {
    static var previews: some View {
        ConditionalModifierView()
    }
}
