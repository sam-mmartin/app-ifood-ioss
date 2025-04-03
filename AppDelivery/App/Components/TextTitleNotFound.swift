import SwiftUI

struct TextTitleNotFound: View {
  var body: some View {
    Text("Nenhum resultado encontrado.")
      .font(.title2)
      .bold()
      .foregroundColor(Color("ColorRed"))
      .padding(.vertical, 32)
      .frame(maxWidth: .infinity)
  }
}

#Preview {
  TextTitleNotFound()
}
