//
//  CategoryItemView.swift
//  Berdianalog
//
//  Created by Mochamad Dandi on 15/06/21.
//

import SwiftUI

struct CategoryItemView: View {
    // MARK: - property
    
    let category: Category
    
    // MARK: - body
    
    var body: some View {
        Button(action: {}, label: {
            HStack(alignment: .center, spacing: 6 ){
                Image(category.image)
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30, alignment: .center)
                    .foregroundColor(.gray)
                
                Text(category.name.uppercased())
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                
                Spacer()
            }//:hstack
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(
            RoundedRectangle(cornerRadius: 12)
                .stroke(Color.gray, lineWidth: 1))
        })//:button
    }
}

struct CategoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItemView(category: categories[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
