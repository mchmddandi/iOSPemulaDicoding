//
//  FeaturedItemView.swift
//  Berdianalog
//
//  Created by Mochamad Dandi on 14/06/21.
//

import SwiftUI

struct FeaturedItemView: View {
    // MARK: - properties
    
    let photograph: Photograph
    
    // MARK: - body
    
    var body: some View {
        Image(photograph.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

// MARK: - preview
struct FeaturedItemView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedItemView(photograph: photographs[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
