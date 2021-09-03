//
//  FeaturedTabView.swift
//  Berdianalog
//
//  Created by Mochamad Dandi on 14/06/21.
//

import SwiftUI

struct FeaturedTabView: View {
    var body: some View {
        TabView{
            ForEach(photographs) { photograph in
                FeaturedItemView(photograph: photograph)
                    .padding(.top, 10)
                    .padding(.vertical, 15)
            }
        } //:TAB
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

struct FeaturedTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedTabView()
            .previewDevice("Iphone 12 Pro")
            .background(Color.gray)
    }
}
