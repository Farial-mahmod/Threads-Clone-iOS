import SwiftUI

struct AddThreadView : View {
  @State var captions = ""
  @Environment(\.dismiss) var dismiss

   var body: some View {
     NavigationStack{
       VStack{
         HStack(alignment: .top){
           CircularProfileImageView()

           VStack(alignment: .leading, spacing: 5){
             Text("Kemon achen?").fontWeight(.semibold)
             TextField("Write a thread ..", text: $caption, axis: .vertical).font(.footnote)
           }
           Spacer()
           
  
