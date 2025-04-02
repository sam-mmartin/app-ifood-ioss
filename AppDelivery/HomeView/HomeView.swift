import SwiftUI

struct HomeView: View {

  @State private var isAnimating = false
  @State private var buttonOffset: CGFloat = 0
  @State private var showSecondScreen = false
  let buttonHeight: CGFloat = 80

  var body: some View {
    GeometryReader { geometry in
      ZStack {
        HomeCircleView(
          isAnimating: isAnimating,
          sizeWidth: geometry.size.width,
          sizeHeight: geometry.size.height
        )

        VStack {
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

          HomeImageView(isAnimating: isAnimating)

          ZStack {
            Capsule()
              .fill(Color("ColorRed"))
              .opacity(0.2)

            Capsule()
              .fill(Color("ColorRed"))
              .opacity(0.2)
              .padding(8)

            Text("Descubra mais")
              .font(.title2)
              .bold()
              .foregroundColor(Color("ColorRedDark"))
              .offset(x: 20)
            
            HStack {
              Capsule()
                .fill(Color("ColorRed"))
                .frame(width: buttonOffset + buttonHeight)
              
              Spacer()
            } // Final HStack

            HStack {
              ZStack {
                Circle()
                  .fill(Color("ColorRed"))

                Circle()
                  .fill(Color("ColorRedDark"))
                  .padding(8)

                Image(systemName: "chevron.right.2")
              } // Final ZStack

              Spacer()
            }
            .offset(x: buttonOffset)
            .gesture(
              DragGesture()
                .onChanged({ gesture in
                  if gesture.translation.width >= 0
                    && buttonOffset <= (geometry.size.width - 60) - buttonHeight
                  {
                    withAnimation(.easeInOut(duration: 0.25)) {
                      buttonOffset = gesture.translation.width
                    }
                  } // Final if
                })
                .onEnded({ _ in
                  if buttonOffset > (geometry.size.width - 60) / 2 {
                    showSecondScreen = true
                  } else {
                    withAnimation(.easeInOut(duration: 0.25)) {
                      buttonOffset = 0
                    }
                  } // Final if-else
                })
            )
            // Final HStack

          }
          .frame(width: geometry.size.width - 60, height: buttonHeight)
          .opacity(isAnimating ? 1 : 0)
          .offset(y: isAnimating ? 0 : 100)
          // Final ZStack

        }
        .onAppear {
          withAnimation(.easeInOut(duration: 1)) {
            isAnimating = true
          }
        }
        // Final VStack

      }  // Final ZStack
    }
    .fullScreenCover(isPresented: $showSecondScreen) {
      ContentView()
    }
    // Final GeometryReader
    
  }  // Final View
}  // Final struct

#Preview {
  HomeView()
}
