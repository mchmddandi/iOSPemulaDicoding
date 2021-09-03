//
//  BerdianalogApp.swift
//  Berdianalog
//
//  Created by Mochamad Dandi on 14/06/21.
//

import SwiftUI

@main
struct BerdianalogApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                AboutView()
            }else {
            ContentView()
                .environmentObject(Shop())
            }
        }
    }
}
