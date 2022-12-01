import SwiftUI

struct AnimationsView: View {
    @State var offsetLeft = false
    
    var body: some View {
        VStack {
            ImplicitAnimation()
            
            Divider()
            
            ImplicitAnimationWithValue()
            
            
            Divider()
            
            ExplicitAnimation()
        }
    }
}

struct AnimationsView_Previews: PreviewProvider {
    static var previews: some View {
        AnimationsView()
    }
}
