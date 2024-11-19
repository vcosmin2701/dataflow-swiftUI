import SwiftUI

struct ControlPanelView: View {
    @Binding var userInput: String
    var body: some View {
        TextField("", text: $userInput)
    }
}
