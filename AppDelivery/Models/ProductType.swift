import Foundation

struct ProductType: Identifiable, Codable {
  let id: Int
  let name: String
  let description: String
  let image: String
  let price: Double
  
  var formattedPrice: String {
    return "R$ " + price.formatPrice()
  }
}

