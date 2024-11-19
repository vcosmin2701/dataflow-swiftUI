import SwiftUI

@main
struct DataFlowApp: App {
    var body: some Scene {
        WindowGroup {
            AccountView()
                .environmentObject(Profile())
        }
    }
}
