import Foundation

struct Position {
  let x: CGFloat
  let y: CGFloat
}

struct Animation {
  let position: Position
  let width: CGFloat
  let opacity: Double
  var color: String?
}
