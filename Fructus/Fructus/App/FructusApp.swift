//
//  FructusApp.swift
//  Fructus
//
//  Created by Glenn Von Posadas on 10/2/20.
//

import SwiftUI

@main
struct FructusApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView(fruits: fruitsData)
            } else {
                ContentView()
            }
        }
    }
}
