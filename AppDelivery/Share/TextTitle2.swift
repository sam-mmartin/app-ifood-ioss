import SwiftUI

struct TextTitle2: View {
  
  let titulo: String
  
    var body: some View {
      Text(titulo)
        .font(.title2)
        .bold()
        .padding()
    }
}

#Preview {
  TextTitle2(titulo: "Produtos")
}
