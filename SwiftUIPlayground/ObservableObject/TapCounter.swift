import SwiftUI

class TapCounter: ObservableObject {
    @Published var count = 0

    func incrementCounter() {
        count += 1
    }
}
