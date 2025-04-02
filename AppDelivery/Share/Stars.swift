import SwiftUI

struct Stars: View {

  let stars: Int

  var body: some View {
    ForEach(1...stars, id: \.self) { _ in
      Image(systemName: "star.fill")
        .foregroundColor(.yellow)
        .font(.caption)
    }
  }
}

#Preview {
  Stars(stars: 5)
}
