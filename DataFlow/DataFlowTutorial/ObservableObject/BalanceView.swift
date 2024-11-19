import SwiftUI

struct BalanceView: View {
    @EnvironmentObject var profile: Profile
    
    var body: some View {
        VStack {
            if profile.isLoggedIn {
                Text("$1")
            } else {
                EmptyView()
            }
        }
    }
}

#Preview {
    BalanceView()
        .environmentObject(Profile())
}
