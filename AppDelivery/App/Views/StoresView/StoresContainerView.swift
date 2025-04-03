import SwiftUI

struct StoresContainerView: View {

  @State private var ratingFilter = 0
  let title = "Lojas"
  var stores: [StoreType]

  var filteredStores: [StoreType] {
    return stores.filter { store in
      store.stars >= ratingFilter
    }
  }

  var body: some View {
    VStack(alignment: .leading) {

      HStack {
        Text(title)
          .font(.headline)

        Spacer()

        MenuRatingFilter(ratingFilter: $ratingFilter)
      }  // Final HStack

      VStack(alignment: .leading, spacing: 30) {

        if filteredStores.isEmpty {
          TextTitleNotFound()
        } else {
          ForEach(filteredStores) { element in
            NavigationLink {
              StoreDetailsView(store: element)
            } label: {
              StoreItemView(store: element)
            }
          }  // Final Foreach
        }  // Final If-else
      }
      .foregroundColor(.black)
      // Final VStack

    }
    .padding(20)
    // Final VStack

  }  // Final View
}  // Final struct

#Preview {
  StoresContainerView(stores: storesMock)
}
