import SwiftUI

// Two-Way data binding

struct Practice2: View {
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    @State private var age: Int = 0
    
    var body: some View {
        VStack {
            Form {
                TextField("First Name", text: $firstName)
                TextField("Last Name", text: $lastName)
                TextField("Age", value: $age, formatter: NumberFormatter())
            }
            
            VStack {
                Text("Display Info")
                    .font(.headline)
                Text("First Name: \(firstName)")
                Text("Second Name: \(lastName)")
                Text("Age: \(age)")
            }
        }
    }
}

#Preview {
    Practice2()
}
