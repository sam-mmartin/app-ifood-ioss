import SwiftUI

struct HomeImageView: View {

  let isAnimating: Bool
  @State private var imageOffset: CGSize = .zero

  var body: some View {
    Image(.home)
      .resizable()
      .scaledToFit()
      .shadow(radius: 60)
      .padding(isAnimating ? 32 : 92)
      .opacity(isAnimating ? 1 : 0)
      .offset(x: imageOffset.width, y: imageOffset.height)
      .gesture(
        DragGesture()
          .onChanged({ gesture in
            withAnimation(.easeInOut(duration: 0.3)) {
              imageOffset = gesture.translation
            }
          })
          .onEnded({ _ in
            withAnimation(.easeInOut(duration: 0.5)) {
              imageOffset = .zero
            }
          })
      )
    // Final Image

  }  // Final View
}  // Final struct

#Preview {
  HomeImageView(isAnimating: true)
}
