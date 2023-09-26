import Foundation

enum ProfileThreadFilter : Identifiable, Int, CaseIterable {
  case threads
  case replies

  var title: String {
    switch self {
      case .threads return "Threads"
      case .replies return "Replies"
    }
  }
  var id : Int {return self.rawValue}
}
