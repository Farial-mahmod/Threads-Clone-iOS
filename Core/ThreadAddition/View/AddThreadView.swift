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
             Text("Threads").fontWeight(.semibold)
             TextField("Write a thread ..", text: $caption, axis: .vertical).font(.footnote)
           }
           
           Spacer()

           if !caption.isEmpty {
             Button {
                     caption = ""
                    } label: {
               Image(systemName: "xmark")
               .resizable()
               .frame(width: 12, height: 12)
               .foregroundColor(.gray)
             }
           }
         }
         Spacer()
       }
       .padding()
       .navigationTitle("New Thread")
       .navigationBarTitleDisplayMode(.inline)
       .toolbar {

        ToolbarItem(placement: .navigationBarLeading){
          Button{
            dismiss()
          }.font(.subheadline)
          .foregroundColor(.black)
       }

        ToolbarItem(placement: .navigationBarTrailing){
          Button{
            
          }.font(.subheadline)
          .foregroundColor(.black)
          .disabled(caption.isEmpty)
          .opacity(caption.isEmpty ? 0.1 : 1)
       }
       }
     }
   }
}

struct AddThreadView_Previews : View {
  static var previews : View {
    AddThreadView()
  }
}
           
  
