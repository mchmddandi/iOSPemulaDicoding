//
//  HeaderDetailView.swift
//  Berdianalog
//
//  Created by Mochamad Dandi on 15/06/21.
//

import SwiftUI

struct HeaderDetailView: View {
    
    @EnvironmentObject var shop: Shop
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6, content: {
            Text("Roll Film")
            
            Text(shop.selectedProduct?.name ?? SampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
            
        })//vstack
        .foregroundColor(.white)
        
    }
}

struct HeaderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
