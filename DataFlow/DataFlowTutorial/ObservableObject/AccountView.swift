import SwiftUI


struct AccountView: View {
    @EnvironmentObject var profile: Profile

    var body: some View {
        VStack {
            if profile.isLoggedIn {
                Text("Hello")
            } else {
                Text("Please log in")
            }
            
            BalanceView()
            
            Button(action: {
                profile.isLoggedIn.toggle()
            }, label: {
                Text("\(!profile.isLoggedIn ? "LOGIN" : "LOGOUT")")
            })
        }
    }
}

#Preview {
    AccountView()
        .environmentObject(Profile())
}
