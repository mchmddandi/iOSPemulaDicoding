//
//  LogoView.swift
//  Berdianalog
//
//  Created by Mochamad Dandi on 14/06/21.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        HStack(spacing: 4) {
            Text("Berdi".uppercased())
                .font(.title2)
                .fontWeight(.black)
                .foregroundColor(.black)

            Image("logo-lineal")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30, alignment: .center)
            
            Text("Analog".uppercased())
                .font(.title3)
                .fontWeight(.regular)
            
        } //:HSTACK
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
