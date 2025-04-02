import SwiftUI

struct ZCircleDim: View {

  let isAnimating: Bool
  let animationStart: Animation
  let animationFinal: Animation

  var body: some View {
    Circle()
      .foregroundColor(Color(animationFinal.color!))
      .frame(width: isAnimating ? animationFinal.width : animationStart.width)
      .position(
        x: isAnimating ? animationFinal.position.x : animationStart.position.x,
        y: isAnimating ? animationFinal.position.y : animationStart.position.y
      )
      .blur(radius: 60)
      .opacity(isAnimating ? animationFinal.opacity : animationStart.opacity)
  }
}

#Preview {
  ZCircleDim(
    isAnimating: true,
    animationStart: Animation(
      position: Position(x: 0, y: 0),
      width: 0,
      opacity: 0),
    animationFinal: Animation(
      position: Position(x: 50, y: 100),
      width: 200,
      opacity: 0.5,
      color: "ColorRed"))
}
