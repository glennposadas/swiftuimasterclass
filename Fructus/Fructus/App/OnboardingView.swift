//
//  OnboardingView.swift
//  Fructus
//
//  Created by Glenn Von Posadas on 10/2/20.
//

import SwiftUI

struct OnboardingView: View {
    
    // MARK: - Properties
    
    // MARK: - Functions
    // MARK: Overrides

    var body: some View {
        TabView {
            ForEach(0..<5) { card in
                FruitCardView()
            }
        }//: TableView
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
