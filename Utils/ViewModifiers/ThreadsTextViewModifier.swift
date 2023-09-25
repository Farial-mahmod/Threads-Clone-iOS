import SwiftUI

struct ThreadsTextViewModifier : ViewModifier {
  func body(content: Content) -> some View {
    content
    .font(.subheadline)
    .padding(11)
    .padding(.horizontal, 25)
    .background(Color(.systemGray6))
    .cornerRadius(9)
  }
}
