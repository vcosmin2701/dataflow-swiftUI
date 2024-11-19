import SwiftUI

struct Practice3: View {
    @State private var enableDarkMode = false
    @State private var disableNotifications = false
    
    var body: some View {
        Button(action: {
            disableAllOptions()
        }, label: {
            Text("MASTER")
        })
        ToggleSwitch(darkMode: $enableDarkMode, notifications: $disableNotifications)
    }
    
    private func disableAllOptions() {
        enableDarkMode = false
        disableNotifications = false
    }
}

#Preview {
    Practice3()
}
