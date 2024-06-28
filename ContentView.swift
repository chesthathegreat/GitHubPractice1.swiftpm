import SwiftUI

// Great Job

struct ContentView: View {
    @State private var toggle: Bool = true
    @State var quotes: [String] = ["temp1" , "temp2"]
    @State var curr: String = ""
    
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
        
        Button(action: {
            curr = quotes.randomElement() ?? ""
        }) {
            Text("Cycle Randomly")
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(8)
        }
    }
}
