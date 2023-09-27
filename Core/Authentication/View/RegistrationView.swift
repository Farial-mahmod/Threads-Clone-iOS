import SwiftUI

struct RegistrationView : View {

@State private var email = ""
@State private var password = ""
@State private var fullname = ""
@State private var username = ""
  
  var body: some View {
    VStack {
      
      Image("icon")
      .resizable()
      .scaledToFit()
      .padding()
      .frame(wifth: 120, height: 120)

    VStack {
    TextField("Email: ", text: $viewModel.email).modifier(ThreadsTextFieldModifier())
    SecureField("Password: ", text: $viewModel.password).modifier(ThreadsTextFieldModifier())
    TextField("Full Name: ", text: $viewModel.fullname).modifier(ThreadsTextFieldModifier())
    TextField("User Name: ", text: $viewModel.username).modifier(ThreadsTextFieldModifier())
    }
      Button {
        Task {
          try await viewModel.createUser()
        }
      } label: {
        Text("Sign Up")
        .font(subheadline)
        .fontWeight(.semibold)
        .foregroundColor(.white)
        .background(.black)
        .cornerRadius(11)
        .frame(width: 351, height: 45)
      }.padding(.vertical)
      
      Spacer()
      Divider()

      Button {} label: {
        HStack(spacing: 3){
          Text("Already have an account?")
          Text("Sign In")
        }
        .foregroundColor(.black)
        .footnote()
      }
      .padding(.vertical, 15)
    }
    
  }
}
