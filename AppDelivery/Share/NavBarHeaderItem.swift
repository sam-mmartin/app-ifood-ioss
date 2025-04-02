import SwiftUI

struct NavBarHeaderItem: View {

  let icon: String
  let navTitle: String
  @Environment(\.presentationMode) var presentationMode

  var body: some View {
    Button {
      presentationMode.wrappedValue.dismiss()
    } label: {
      HStack(spacing: 4) {
        Image(systemName: icon)

        Text(navTitle)
          .foregroundColor(Color("ColorRed"))
      }  // Final HStack
    }  // Final Button
  }  // Final View
}  // Final struct

#Preview {
  NavBarHeaderItem(icon: "cart", navTitle: "lojas")
}
