import SwiftUI

struct StoreDetailsView: View {

  let store: StoreType
  @Environment(\.presentationMode) var presentationMode
   
  var body: some View {
    ScrollView(showsIndicators: false) {
      VStack(alignment: .leading) {
        StoreDetailHeaderView(store: store)
        
        StoreDetailProductsView(products: store.products)
      }
      .navigationTitle(store.name)
      .navigationBarTitleDisplayMode(.inline)
      .navigationBarBackButtonHidden()
      .toolbar {
        ToolbarItem(placement: .navigationBarLeading) {
          Button {
            presentationMode.wrappedValue.dismiss()
          } label: {
            HStack(spacing: 4) {
              Image(systemName: "cart")
              
              Text("lojas")
                .foregroundColor(Color("ColorRed"))
            }
          }
        }
      }
      // Final VStack
      
    } // Final ScrollView
  }
}

#Preview {
  StoreDetailsView(store: storesMock[0])
}
