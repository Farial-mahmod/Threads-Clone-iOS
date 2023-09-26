import SwiftUI

struct UserCell : View {
  var body: some View {
    HStack {
      CircularProfileImageView()

      VStack {
        Text("Alice").fontWeight(.semibold)
        Text("C")
      }.font(.footnote)
      
      Text("Follow").fontWeight(.semibold).frame(width: 100, height: 31)
      .overlay{ RoundedRectangle(cornerRadius: 11).stroke(Color(.gray), lineWidth: 1)
              }
    }.padding(.horizontal)
  }
}

struct UserCell_Previews : PreviewProvider {
  static var previews : some View {
    UserCell()
  }
}
