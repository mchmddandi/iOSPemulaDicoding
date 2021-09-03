//
//  ProductItemView.swift
//  Berdianalog
//
//  Created by Mochamad Dandi on 15/06/21.
//

import SwiftUI

struct ProductItemView: View {
    
    let product: Product
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6,
               content: {
          // PHOTO
          ZStack {
            Image(product.image)
              .resizable()
              .scaledToFit()
              .padding(10)
          } //: ZSTACK
          .background(Color.white)
          .cornerRadius(12)
                
                //name
                Text(product.name)
                    .font(.title3)
                    .fontWeight(.black)
                
                //price
                Text(product.formattedPrice)
                    .foregroundColor(.gray)
        })//vstack
    }
}

struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: products[0])
            .previewLayout(.fixed(width: 200, height: 300))
            .padding()
            .background(colorBackground)
    }
}
