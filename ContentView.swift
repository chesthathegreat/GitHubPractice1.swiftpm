import SwiftUI

// Great Job

struct ContentView: View {
    @State private var toggle: Bool = true
    
    var body: some View {
        VStack {
            Toggle("Light Mode", isOn: $toggle)
                .padding()
                .offset(x: 0, y: -350)
                .foregroundStyle(toggle ? Color.black : Color.white)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(toggle ? Color.white : Color.black)
        .edgesIgnoringSafeArea(.all)
    }
}
