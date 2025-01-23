import Foundation

struct Task: Identifiable, Codable {
    let id: UUID
    var title: String
    var dueDate: Date
    var isCompleted: Bool
    var repeatOption: RepeatOption
    
    init(id: UUID = UUID(), title: String, dueDate: Date, isCompleted: Bool = false, repeatOption: RepeatOption = .none) {
        self.id = id
        self.title = title
        self.dueDate = dueDate
        self.isCompleted = isCompleted
        self.repeatOption = repeatOption
    }
}

enum RepeatOption: String, Codable, CaseIterable {
    case none = "不重复"
    case daily = "每天"
    case weekly = "每周"
    case monthly = "每月"
}
