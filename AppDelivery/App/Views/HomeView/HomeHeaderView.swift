import SwiftUI

struct HomeHeaderView: View {

  let isAnimating: Bool

  var body: some View {
    Text("App Delivery")
      .font(.system(size: 48))
      .fontWeight(.heavy)
      .foregroundColor(Color("ColorRed"))
      .opacity(isAnimating ? 1 : 0)
      .offset(y: isAnimating ? 0 : -40)

    Text("Peça as suas comidas no conforto da sua casa")
      .font(.title2)
      .padding()
      .multilineTextAlignment(.center)
      .foregroundColor(.black.opacity(0.7))
      .opacity(isAnimating ? 1 : 0)
      .offset(y: isAnimating ? 0 : -40)

  }  // Final View
}  // Final struct

#Preview {
  HomeHeaderView(isAnimating: true)
}
