import SwiftUI

// Great Job

struct ContentView: View {
    @State private var toggle: Bool = true
    @State var quotes = ["We talk on principal, but act on motivation.", "The secret of getting ahead is getting started.", "Winners never quit, and quitters never win.", "When the going gets tough, the tough get going.", "The best way to predict the future is to create it.", "Don’t be afraid to give up the good to go for the great", "Start where you are. Use what you have. Do what you can.", "You must expect great things of yourself before you can do them.", "You don’t have to see the whole staircase, just take the first step.", "We are what we repeatedly do. Excellence, then, is not an act, but a habit.", "Change your thoughts and you change your world.", "It’s hard to beat a person who never gives up."]
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
