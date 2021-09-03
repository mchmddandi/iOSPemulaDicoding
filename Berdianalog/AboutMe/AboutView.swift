//
//  AboutView.swift
//  Berdianalog
//
//  Created by Mochamad Dandi on 16/06/21.
//

import SwiftUI

struct AboutView: View {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    var gradient: [Color] = [Color("ColorBackground"), Color.black]
    
    var body: some View {
        ZStack {
            
            Image("Developer")
                .resizable()
            VStack{
                Text("Mochamad Dandi")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                Text("iOS Developer Enthusiast")
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
                    .italic()
            }
            .offset(y: -218)
            
            Button(action: {
                isOnboarding = false
            })  {
                HStack {
                Text("Tap For See MyApp".uppercased())
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .accentColor(Color.white)
                
                Image(systemName: "arrow.right.circle")
                    .font(Font.title.weight(.medium))
                    .accentColor(Color.white)
                }
                .padding(.vertical)
                .padding(.horizontal, 24)
                .background(LinearGradient(gradient: Gradient(colors: gradient), startPoint: .leading, endPoint: .trailing))
                .clipShape(Capsule())
                .shadow(color: Color("ColorBackground"), radius: 6, x: 0, y: 3)
            }
            .offset(y: 210)
        }
        .frame(width: 335, height: 545)
        .background(LinearGradient(gradient: Gradient(colors: gradient), startPoint: .top, endPoint: .bottom ))
        .cornerRadius(16)
        .shadow( radius: 8)
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
            .previewLayout(.sizeThatFits)
    }
}
