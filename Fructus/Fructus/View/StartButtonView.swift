//
//  StartButtonView.swift
//  Fructus
//
//  Created by Glenn Von Posadas on 10/2/20.
//

import SwiftUI

struct StartButtonView: View {
    
    // MARK: - Properties
    
    // MARK: - Body
    
    var body: some View {
        Button(action: {
            print("Exit the onboarding")
        }, label: {
            HStack(spacing: 8) {
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule()
                    .strokeBorder(Color.white, lineWidth: 1.25)
            )
        })//: BUTTON
        .accentColor(.white)
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
