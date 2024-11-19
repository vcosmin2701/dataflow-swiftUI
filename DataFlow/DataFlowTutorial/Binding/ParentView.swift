import SwiftUI

struct ParentView: View {
    @State var userInput = ""
    
    var body: some View {
        VStack {
            Rectangle()
                .foregroundStyle(userInput.lowercased() == "blue" ? .blue : .black)
            ControlPanelView(userInput: $userInput)
        }
    }
}

#Preview {
    ParentView()
}
