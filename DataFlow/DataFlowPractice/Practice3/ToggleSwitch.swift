import SwiftUI

struct ToggleSwitch: View {
    @Binding var darkMode: Bool
    @Binding var notifications: Bool
    
    var body: some View {
        VStack {
            Toggle("Dark Mode", isOn: $darkMode)
            Toggle("Notifications", isOn: $notifications)
            
            if darkMode {
                Rectangle()
                    .foregroundStyle(.black)
            }
            
            if notifications {
                Text("Notifications are disabled")
            }
        }
    }
}

