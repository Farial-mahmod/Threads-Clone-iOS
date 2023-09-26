import SwiftUI

struct ExploreView : View {
  @State private var searchText = ""

var body: some View {
  NavigationStack {
    ScrollView{
      LazyVStack {
        ForEach(0...10, id: \.self) user in
        VStack {
          UserCell()
          Divider()
        }.padding(.vertical,5)
      }
}
}
  .navigationTitle("Search")
  .searchable(text: $searchText, prompt: "Search here")
}
}
}

ExploreView_Previews : PreviewProvider {
  static var preview : some View {
    ExploreView()
  }
}
