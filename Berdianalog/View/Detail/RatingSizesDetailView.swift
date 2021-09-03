//
//  RatingSizesDetailView.swift
//  Berdianalog
//
//  Created by Mochamad Dandi on 15/06/21.
//

import SwiftUI

struct RatingSizesDetailView: View {
    
    
    var body: some View {
        HStack(alignment: .top, spacing: 3, content: {
            //rating
            VStack(alignment: .leading, spacing: 3, content: {
                Text("Ratings")
                    .font(.title)
                    .fontWeight(.black)
                    .foregroundColor(.white)
                
                HStack(alignment: .center, spacing: 3, content: {
                    ForEach(1...5, id: \.self) { item in
                        Button(action: {
                            feedback.impactOccurred()
                        }, label: {
                            Image(systemName: "star.fill")
                                .frame(width: 28, height: 28, alignment: .center)
                                .foregroundColor(.yellow)
                        })
                    }
                })
            })
            Spacer()
            
        })
    }
}

struct RatingSizesDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RatingSizesDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
