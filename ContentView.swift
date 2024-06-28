import SwiftUI

// Great Job

struct ContentView: View {
    @State private var toggle: Bool = true
    
    var body: some View {
        VStack {
            
            Text("\n\n")
            
            Text("Daily Motivation")
                .font(.largeTitle)
                .foregroundStyle(toggle ? Color.black : Color.white)
            Spacer()
            
            Toggle("Light Mode", isOn: $toggle)
                .padding()
                .foregroundStyle(toggle ? Color.black : Color.white)
                .frame(width:200, height: 50)
            Text("\n")
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(toggle ? Color.white : Color.black)
        .edgesIgnoringSafeArea(.all)
    }
}
