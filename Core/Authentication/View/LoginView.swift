import SwiftUI

struct LoginView : some View {
  
@StateObject var viewModel = LoginViewModel()

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
        TextField("Enter email: ", text: $viewModel.email).modifier(ThreadsTextFieldModifier())
        SecureField("Enter password: ", text: $viewModel.password).modifier(ThreadsTextFieldModifier())
      }

      NavigationLink{ Text("To be updated.")} label: {
        Text("Forgot Pass?")
        .foregroundColor(.black)
        .frame(maxWidth: .infinity, alignment: .trailing)
        .padding(.vertical)
        .padding(.vertical, 28)
        .font(.footnote)
      }

      Button {
        Task {
          try await viewModel.login()
        }
      } label: {
        Text("Login")
        .font(subheadline)
        .fontWeight(.semibold)
        .foregroundColor(.white)
        .background(.black)
        .cornerRadius(11)
        .frame(width: 351, height: 45)
      }.padding(.vertical)
      }
      
    }
  }

      Spacer()
      Divider()

      Button {} label: {
        HStack(spacing: 3){
          Text("Don\'t have an account?")
          Text("Sign Up")
        }
        .foregroundColor(.black)
        .footnote()
      }
      .padding(.vertical, 15)
    }
  
}
  
}
