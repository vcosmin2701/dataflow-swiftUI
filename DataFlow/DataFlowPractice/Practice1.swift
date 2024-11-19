import SwiftUI

struct Practice1: View {
    @State private var count: Int = 0
    var body: some View {
        
        // Assignment 1: Counter App
        // objective: @State
        
        VStack {
            Text("Counter: \(count)")
            HStack {
                Button(action: {
                    count += 1
                }, label: {
                    Image(systemName: "plus")
                })
                
                Button(action: {
                    count -= 1
                }, label: {
                    Image(systemName: "minus")
                })
            }.padding()
            
            VStack {
                if count != 0{
                    Button("RESET") {
                        count = 0
                    }
                    .padding()
                }
            }
        }
    }
}

#Preview {
    Practice1()
}
