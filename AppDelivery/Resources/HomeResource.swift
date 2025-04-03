import Foundation
import Alamofire

enum RequestError: Error {
  case invalidUrl
  case errorRequest(error: String)
}

struct HomeResource {
  func fetchData() async throws -> Result<[StoreType], RequestError> {
    guard
      let url = URL(
        string: "https://private-47c94e-sammmartin.apiary-mock.com/home"
      )
    else {
      return .failure(.invalidUrl)
    }

    var request = URLRequest(url: url)
    request.httpMethod = "GET"

    let (data, _) = try await URLSession.shared.data(for: request)
    let storesObj = try JSONDecoder().decode([StoreType].self, from: data)

    return .success(storesObj)

  }  // Final func

  func confirmOrder(product: ProductType) async throws -> Result<
    [String: String]?, RequestError
  > {
    guard
      let url = URL(
        string: "https://private-47c94e-sammmartin.apiary-mock.com/home"
      )
    else {
      return .failure(.invalidUrl)
    }

    let encodedObj = try JSONEncoder().encode(product)

    var request = URLRequest(url: url)
    request.httpMethod = "POST"
    request.httpBody = encodedObj

    let (data, _) = try await URLSession.shared.data(for: request)
    let message =
      try JSONSerialization.jsonObject(with: data) as? [String: String]

    return .success(message)

  }
  
  func getStores(completion: @escaping([StoreType]?, Error?) -> Void) {
    AF.request("https://private-47c94e-sammmartin.apiary-mock.com/home")
      .responseDecodable(of: [StoreType].self) { response in
        switch response.result {
        case .success(let stores):
          completion(stores, nil)
        default: break
        }
      }
  }
}  // Final struct

//URLSession.shared.dataTask(with: url) { data, _, error in
//  if let error = error {
//    print(error.localizedDescription)
//  } else if let data = data {
//    let storesObjects = try? JSONDecoder().decode(
//      [StoreType].self, from: data)
//    print(storesObjects)
//  }
//}
//.resume()
