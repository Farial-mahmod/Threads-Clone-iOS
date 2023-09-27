import Firebase

class AuthService {

  @MainActor
  func login(withEmail email: String, password: String, fullname: String, username: String) throws async {
    do {
      let result = try await Auth.auth().createUser(withEmail: email, password: password)
      print("User generated: \(result.user.uid)")
    } catch {
      print(error.localizedDescription)
    }
  }
}
