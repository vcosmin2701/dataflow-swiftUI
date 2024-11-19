import SwiftUI

struct ContentView: View {
    
    @State var counter = 0
    @State var favoriteGame = ""
    
    var body: some View {
        VStack {
            Text("Points: \(counter)")
            Button("Add points") {
                counter += 1
            }
            Text("Your favorite game: \(favoriteGame)")
            TextField("Favorite game", text: $favoriteGame)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
