import SwiftUI

struct StoreDetailHeaderView: View {

  let store: StoreType

  var body: some View {
    VStack {
      Image(store.headerImage)
        .resizable()
        .scaledToFit()

      HStack {
        Text(store.name)
          .font(.title)
          .bold()

        Spacer()

        Image(store.logoImage)
          .resizable()
          .scaledToFit()
          .frame(width: 50, height: 50)
          .cornerRadius(25)
      }
      .padding(.vertical, 8)
      .padding(.horizontal)

      HStack {
        Text(store.location)

        Spacer()

        Stars(stars: store.stars)
      }
      .padding(.vertical, 8)
      .padding(.horizontal)
    }
  }
}

#Preview {
  StoreDetailHeaderView(store: storesMock[0])
}
