import SwiftUI

struct Practice4: View {
    @ObservedObject var taskManager = TaskManager()
    var body: some View {
        List {
            ForEach(taskManager.tasks, id: \.self) {task in
                VStack {
                    Text("Task Name: \(task.name)")
                    Text("Completed?: \(task.isCompleted)")
                    
                }
            }
        }
    }
}

#Preview {
    Practice4()
}
