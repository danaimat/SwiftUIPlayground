import SwiftUI

@main
struct SwiftUIPlaygroundApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                List {
                    NavigationLink(destination: ModifiersOrderView()) {
                        Text("Modifiers Order")
                    }
                    
                    NavigationLink(destination: ConditionalModifierView()) {
                        Text("Conditional Modifier")
                    }
                    
                    NavigationLink(destination: StateUpdateView()) {
                        Text("State Update")
                    }
                    
                    NavigationLink(destination: StateAndBindingView()) {
                        Text("State and Binding")
                    }

                    NavigationLink(destination: ObservableObjectView()) {
                        Text("StateObject and ObservedObject")
                    }
                    
                    NavigationLink(destination: EnvironmentObjectView()) {
                        Text("EnvironmentObject")
                    }
                    
                    NavigationLink(destination: EnvironmentValueView()) {
                        Text("EnvironmentValue")
                    }
                    
                    NavigationLink(destination: AnimationsView()) {
                        Text("Animations")
                    }
                    
                    NavigationLink(destination: TransitionView()) {
                        Text("Transitions")
                    }
                }
            }
            .font(.system(size: 16, weight: .regular, design: .rounded))
        }
    }
}
