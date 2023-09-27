import Firebase

class AuthService {

  @Published var userSession : FirebaseAuth.User?
  static let shared = AuthService()

  @MainActor
  func login(withEmail email: String, password: String, fullname: String, username: String) async throws {
    do {
      let result = try await Auth.auth().createUser(withEmail: email, password: password)
      print("User generated: \(result.user.uid)")
    } catch {
      print(error.localizedDescription)
    }
  }
  func signOut(){
    try? Auth.auth().signOut()
    self.userSession = nil
  }
}
