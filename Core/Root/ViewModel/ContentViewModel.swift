import Foundation
import Combine
import Firebase

class ContentViewModel : ObservableObject {
  @Published var userSession: FirebaseAuth.User?

  init(){
    setupSubscribers()
  }

  private func setupSubscribers(){
    AuthService.shared.$userSession.sink { [ weak self] userSession in
                                          self?.userSession = userSession
                                         }
  }
}

