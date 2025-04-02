import SwiftUI

struct StoresContainerView: View {

  let title = "Lojas"
  @State private var ratingFilter = 0

  var filteredStores: [StoreType] {
    return storesMock.filter { store in
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
          Text("Nenhum resultado encontrado.")
            .font(.title2)
            .bold()
            .foregroundColor(Color("ColorRed"))
            .padding(.vertical, 32)
            .frame(maxWidth: .infinity)
        } else {
          ForEach(filteredStores) { mock in
            NavigationLink {
              StoreDetailsView(store: mock)
            } label: {
              StoreItemView(store: mock)
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
  StoresContainerView()
}
