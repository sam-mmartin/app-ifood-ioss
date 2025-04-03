//
//  ProductDetailQuantityView.swift
//  AppDelivery
//
//  Created by Sam Martin on 01/04/25.
//

import SwiftUI

struct ProductDetailQuantityView: View {

  @Binding var productQuantity: Int

  var body: some View {
    VStack(spacing: 16) {
      Text("Quantidade")
        .font(.title3)
        .bold()

      HStack {
        Button {
          if productQuantity > 1 {
            productQuantity -= 1
          }
        } label: {
          Image(systemName: "minus.circle.fill")
            .font(.title)
            .bold()
        } // Final Button

        Text("\(productQuantity)")
          .font(.title2)
          .bold()

        Button {
          productQuantity += 1
        } label: {
          Image(systemName: "plus.circle.fill")
            .font(.title)
            .bold()
        } // Final Button

      } // Final HStack
    } // Final VStack
  } // Final View
} // Final struct

#Preview {
  ProductDetailQuantityView(productQuantity: .constant(1))
}
