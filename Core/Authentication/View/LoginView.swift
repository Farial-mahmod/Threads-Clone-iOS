import SwiftUI

struct LoginView : some View {

  @State private var email = ""
  @State private var password = ""

var body: some View {

  NavigationStack {
    
    VStack {

      Spacer()
      Image("icon")
      .resizable()
      .scaledToFit()
      .frame(width: 120, height: 120)
      .padding()

      VStack {
        TextField("Enter email: ", text: $email).modifier(ThreadsTextFieldModifier())
        SecureField("Enter password: ", text: $password).modifier(ThreadsTextFieldModifier())
      }
      
    }
  }
  
  
}
  
}
