import SwiftUI

struct StoreDetailsView: View {

  let store: StoreType

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
          NavBarHeaderItem(icon: "cart", navTitle: "lojas")
        }  // Final ToolbarItem
      }
      // Final VStack

    }  // Final ScrollView
  }  // Final View
}  // Final struct

#Preview {
  StoreDetailsView(store: storesMock[0])
}
