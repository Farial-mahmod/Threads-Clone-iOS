import SwiftUI

struct CircularProfileImageView : View {
  var body: some View {
    Image("icon")
    .resizable()
    .scaledToFit()
    .frame(width: 41, height: 41)
    .clipShape(Circle())
  }
}

struct CircularProfileImageView_Previews : PreviewProvider {
  static var previews : some View {
    CircularProfileImageView()
  }
}
