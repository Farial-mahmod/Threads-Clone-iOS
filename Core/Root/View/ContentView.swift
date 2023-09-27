import SwiftUI

struct ContentView : View {
  @StateObject var viewModel = ContentViewModel()

  var body: some View {
    Group {
      if viewModel.userSession != nil {
        ThreadsTabView()
      } else {
        LoginView()
      }
    }
  }
}

struct ContentView_Previews : PreviewProvider {
  static var previews = some View {
    ContentView()
  }
}
