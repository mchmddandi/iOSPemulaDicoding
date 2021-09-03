//
//  ProductDetailView.swift
//  Berdianalog
//
//  Created by Mochamad Dandi on 15/06/21.
//

import SwiftUI

struct ProductDetailView: View {
    
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5, content: {
            //navbar
            NavigatonBarDetailView()
                .padding(.horizontal)
                .padding(.top,
                         UIApplication.shared.windows.first?.safeAreaInsets.top)
            
            //header
            HeaderDetailView()
                .padding(.horizontal)
            
            //detail atas
            TopPartDetailView()
                .foregroundColor(.white)
                .padding(.horizontal)
                .zIndex(1)
            
            
            // detail bawah
            
            VStack(alignment: .center, spacing: 0, content: {
                
                //rating
                RatingSizesDetailView()
                    .padding(.top, -20)
                    .padding(.bottom, 10)
                
                //description
                ScrollView(.vertical, showsIndicators: false, content: {
                    Text(shop.selectedProduct?.description ?? SampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.leading)
                        
                })
                
                
                //quantiti
                QuantityFavouriteDetailView()
                    .padding(.vertical, 10)
                
                //cart
                AddToCartDetailView()
                    .padding(.bottom, 20)
                
            })//vstack
            .padding(.horizontal)
            .background(
                Color.gray
                    .clipShape(CustomShape())
                    .padding(.top, -105)
            )
        })//vstack
        .zIndex(0)
        .ignoresSafeArea(.all, edges: .all)
        .background(Color.black)
        .ignoresSafeArea(.all, edges: .all)
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .environmentObject(Shop())
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
