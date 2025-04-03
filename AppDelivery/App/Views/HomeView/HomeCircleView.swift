import SwiftUI

struct HomeCircleView: View {
  
  let isAnimating: Bool
  let sizeWidth: CGFloat
  let sizeHeight: CGFloat
  
    var body: some View {
      ZCircleDim(
        isAnimating: isAnimating,
        animationStart: Animation(
          position: Position(x: -50, y: -100),
          width: 0,
          opacity: 0),
        animationFinal: Animation(
          position: Position(x: 50, y: 100),
          width: 200,
          opacity: 0.5,
          color: "ColorRed"
        )
      )

      ZCircleDim(
        isAnimating: isAnimating,
        animationStart: Animation(
          position: Position(
            x: sizeWidth + 50, y: sizeHeight + 50),
          width: 0,
          opacity: 0),
        animationFinal: Animation(
          position: Position(
            x: sizeWidth - 50, y: sizeHeight - 50),
          width: 200,
          opacity: 0.5,
          color: "ColorRed"
        )
      )
    }
}

#Preview {
  HomeCircleView(isAnimating: true, sizeWidth: 400, sizeHeight: 400)
}
