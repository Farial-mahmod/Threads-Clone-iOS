import Foundation

class LoginViewModel : ObservableObject {
  @Published var email = ""
  @Published var password = ""

  @MainActor
  func createUser() async throws {
    try await AuthService.shared.login(
      withEmail: email,
      password: password
    )
  }
  
}
