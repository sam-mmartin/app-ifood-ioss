import SwiftUI

struct ContentView: View {

  private var resource = HomeResource()
  @State private var storesType: [StoreType] = []
  @State private var isLoading = true

  var body: some View {
    NavigationView {
      VStack(spacing: 0) {
        if isLoading {
          ProgressView()
        } else {
          NavigationBar()
            .padding(.horizontal, 15)

          ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: 20) {
              OrderTypeGridView()
              CarouselTabView()
              StoresContainerView(stores: storesType)
            }
          }  // Final ScrollView
        }  // Final if-else
      }  // Final VStack
    }
    .onAppear {
//      Task {
//        await getStores()
//      }
      getWithAF()
    }
    // Final NavigationView

  }  // Final View

  func getStores() async {
    do {
      let result = try await resource.fetchData()

      switch result {
      case .success(let stores):
        self.storesType = stores
        self.isLoading = false
      case .failure(let error):
        print(error.localizedDescription)
      }
    } catch {
      print(error.localizedDescription)
    }
  }  // Final func
  
  func getWithAF()  {
    resource.getStores { stores, error in
      if stores != nil {
        self.storesType = stores!
        self.isLoading = false
      } else {
        print(error!.localizedDescription)
      }
    }
  }
}  // Final struct

#Preview {
  ContentView()
}
