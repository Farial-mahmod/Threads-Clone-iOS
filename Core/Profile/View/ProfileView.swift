import SwiftUI

struct ProfileView : View {

@State private var selectedFilter : ProfileThreadFilter = .threads
@Namespace var animation

private var filterBarWidth: CGFloat{
  let count = CGFloat(ProfileThreadFilter.allCases.count)
  return UIScreen.main.bounds.width / count - 15
}

  var body : some View {
    ScrollView(showsIndicators: false) {
      VStack(spacing: .21){
        HStack(alignment: .top){
          VStack(alignment: .leading, spacing: 12){
            VStack(alignment: .leading, spacing: 4){
              Text("Person 1").fontWeight(.semibold)
              Text("What eles to define").font(.subheadline)
            }
            Text("Ki ar").font(.footnote)
            Text("! follower.").font(.caption)
          }
          Spacer()
          CircularProfileImageView()
        }

        Button {} label: {
          Text("Follow").font(.subheadline).cornerRadius(9).background(.black).foregroundColor(.white)
        }

      VStack {
        HStack {
          ForEach(ProfileThreadFilter.allCases){ filter in
                  VStack {
                    Text(filter.title)
                    .fontWeight(selectedFilter == filter ? .semibold : .regular)

                    if selectedFilter == filter {
                      Rectangle().frame(width: filterBarWidth, height: 1).foregroundColor(.clear)
                    } else {
                      Rectangle().frame(width: filterBarWidth, height: 1).foregroundColor(.black)
                    }
                  }.onTapGesture{
                    withAnimation(.spring()){
                      selectedFilter = filter
                    }
                  }
               }
        }
        LazyVStack {
          ForEach(0 ... 10, id: \.self) { thread in
                  ThreadCell()
                 }
        }
      }.padding(.vertical, 7)
      }
    }.padding(.horizontal)
  }
}
                                                  
struct ProfileView_Previews : PreviewProvider {
  static var previews : some iew {
    ProfileView()
  }
}
    
