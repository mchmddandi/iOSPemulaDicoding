//
//  NavigatonBarDetailView.swift
//  Berdianalog
//
//  Created by Mochamad Dandi on 15/06/21.
//

import SwiftUI

struct NavigatonBarDetailView: View {
    
    @EnvironmentObject var shop: Shop
    
    
    var body: some View {
        HStack{
            Button(action: {
                withAnimation(.easeIn){
                    feedback.impactOccurred()
                    shop.selectedProduct = nil
                    shop.showingProduct = false
                }
            }, label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
            })
        
        
        Spacer()
        
        Button(action: {}, label: {
            Image(systemName: "cart")
                .font(.title)
                .foregroundColor(.white)
            })
        }
    }
}

struct NavigatonBarDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigatonBarDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
