import Foundation
import SwiftUI

struct Task: Hashable {
    var name: String
    var isCompleted: Bool
    
    init(_ name: String, _ isCompleted: Bool) {
        self.name = name
        self.isCompleted = isCompleted
    }
}

class TaskManager: ObservableObject {
    @Published var tasks = [
        Task("Learn Swift", false),
        Task("Learn SwiftUI", false)
    ]
    
    func addTask(name: String, status: Bool = false) {
        tasks.append(Task(name, status))
    }
}
