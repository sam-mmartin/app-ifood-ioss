import SwiftUI

struct CarouselTabView: View {

  let ordersMock = bannersMock
  @State private var currentIndex = 1

  var body: some View {
    TabView(selection: $currentIndex) {
      ForEach(ordersMock) { mock in
        CarouselItemView(order: mock)
          .tag(mock.id)
      }  // Final ForEach
    }
    .frame(height: 180)
    .tabViewStyle(.page(indexDisplayMode: .always))
    .onAppear {
      Timer.scheduledTimer(withTimeInterval: 3, repeats: true) { _ in
        withAnimation(.easeInOut(duration: 1)) {
          currentIndex = currentIndex >= ordersMock.count ? 1 : currentIndex + 1
        }
      }  // Final Timer
    }
    // Final TabView

  }  // Final View
}  // Final struct

#Preview {
  CarouselTabView()
}
