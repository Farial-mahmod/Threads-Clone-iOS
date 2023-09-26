import Foundation
import SwiftUI

struct EditProfileView : View {
  @State private var bio = ""
  @State private var link = ""

  var body : some View {
    NavigationStack {
      ZStack {
        Color(.systemGroupedBackground).edgeIgnoringSafeArea([.bottom, .horizontal])

        VStack{
          HStack {
            VStack(alignment: .leading, ){
              Text("Name").fontWeight(.semibold)
              Text("Shawna Igli")
            }.font(.footnote)
            
            Spacer()
            CircularProfileImageView()

          }
          Divider()
          VStack(alignment: .leading){
            Text("Bio")
            TextField("Enter bio ..", text: $bio, axis: .vertical)
          }
          .font(.footnote)

          Divider()

          VStack(alignment: .leading){
            Text("Link").fontWeight(.semibold)
            TextField("Edit link: ..", text: $link, axis: .vertical)
          }

          Divider()
          Toggle("Make profile private", isOn: $isPrivateProfile)
        }
        .font(.footnote)
        .padding()
        .cornerRadius(11)
        .overlay {
          RoundedRectangle(cornerRadius: 9).stroke(Color(.systemGray4), lineWidth: 1)
        }.padding()
      }
      .navigationTitle("Edit Profile")
      .navigationBarTitleDisplayMode(.inline)
      .toolbar {
        
        ToolBarItem(placement: .navigationBarLeading){
          Button("Cancel"){
            
          }.font(.subheadline).foregroundColor(.black)
        }
        
          ToolBarItem(placement: .navigationBarTrailing){
          Button("Done"){
            
          }.font(.subheadline).foregroundColor(.black)
        }
      }
      }
  }
}

struct EditProfileView_Previews : PreviewProvider {
  static var previews : some View {
    EditProfileView()
  }
  
}
