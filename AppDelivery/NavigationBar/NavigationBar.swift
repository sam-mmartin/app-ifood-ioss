import SwiftUI

struct NavigationBar: View {
  var body: some View {
    VStack {
      HStack {
        Spacer()
        Button("Rua 8, 230") {

        }
        .font(.subheadline)
        .fontWeight(.semibold)
        .foregroundColor(.black)
        Spacer()

        Button(action: {}) {
          Image(systemName: "bell.badge")
            .font(.title3)
            .foregroundColor(.red)
        }
      }
    }
  }
}

#Preview(traits: .sizeThatFitsLayout) {
  NavigationBar()
}
