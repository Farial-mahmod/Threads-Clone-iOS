import SwiftUI

struct FeedView :  View {

var body: some View {

NavigationStack {
  ScrollView(showIndicators: false){
    // the entire block i.e. anything inside is now scrollable
    LazyVStack {
      ForEach(0 ... 10, id: \.self){ thread in
        ThreadCell()
      }
    }
  }.refreshable {
    // 
  }.navigationTitle("Threads Clone")
  .navigationBarTitleDisplayMode(.inline)
}.toolbar{
  ToolbarItem(placement: .navigationBarTrailing){
    Button {} label: { Image(systemName: "arrow.counterclockwise").foregroundColor(.black)}
  }
}
}
}

struct FeedView_Previews : PreviewProvider {
static var previews : some View {
  NavigationStack{
    FeedView()
  }
}
}
