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
    TextField("Email: ", text: $email).modifier(ThreadsTextFieldModifier())
    SecureField("Password: ", text: $password).modifier(ThreadsTextFieldModifier())
    TextField("Full Name: ", text: $fullname).modifier(ThreadsTextFieldModifier())
    TextField("User Name: ", text: $username).modifier(ThreadsTextFieldModifier())
    }
      Button {} label: {
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
