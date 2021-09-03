//
//  TopPartDetailView.swift
//  Berdianalog
//
//  Created by Mochamad Dandi on 15/06/21.
//

import SwiftUI

struct TopPartDetailView: View {
    
    @EnvironmentObject var shop: Shop
    @State private var isAnimating: Bool = false
    
    var body: some View {
        HStack(alignment: .center, spacing: 6, content: {
            //price
            VStack(alignment: .leading, spacing: 6, content: {
                Text("Harga")
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Text(shop.selectedProduct?.formattedPrice ?? SampleProduct.formattedPrice)
                    .font(.title3)
                    .fontWeight(.black)
                    .scaleEffect(1.40, anchor: .leading)
                
            })
            .offset(y: isAnimating ? -50 : -75)
            
            Spacer()
            
            //photo
            
            Image(shop.selectedProduct?.image ?? SampleProduct.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimating ? 0 : -30)
            
            
        })//hstack
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 1)){
                isAnimating.toggle()
            }
        })
    }
}

struct TopPartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TopPartDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
