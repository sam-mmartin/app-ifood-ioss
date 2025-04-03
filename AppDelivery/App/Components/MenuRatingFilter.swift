import SwiftUI

struct MenuRatingFilter: View {

  @Binding var ratingFilter: Int

  var body: some View {
    Menu("Filtrar") {
      Button {
        ratingFilter = 0
      } label: {
        Text("Limpar filtro")
      }  // Final Button

      Divider()

      ForEach(1...5, id: \.self) { rating in
        Button {
          ratingFilter = rating
        } label: {
          if rating > 1 {
            Text("\(rating) estrelas")
          } else {
            Text("\(rating) estrela")
          }  // Final if-else
        }  // Final Button
      }  // Final ForEach
    }
    .foregroundColor(.black)
    // Final Menu

  }  // Final View
}  // Final struct

#Preview {
  MenuRatingFilter(ratingFilter: .constant(5))
}
