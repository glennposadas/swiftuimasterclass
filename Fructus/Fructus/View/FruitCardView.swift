//
//  FruitCardView.swift
//  Fructus
//
//  Created by Glenn Von Posadas on 10/2/20.
//

import SwiftUI

struct FruitCardView: View {
    
    // MARK: - Properties
    
    var fruit: Fruit
  
    @State private var isAnimating = false
    
    // MARK: - Body

    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                // FRUIT: Image
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15),
                            radius: 8,
                            x: 6,
                            y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                
                // FRUIT: Title
                Text(fruit.title)
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15),
                            radius: 2,
                            x: 2,
                            y: 2)
                
                // FRUIT: Headline
                Text(fruit.headline)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                
                // BUTTON: Start
                StartButtonView()
                
            } //: VStack
        } //: ZStack
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        })
        .frame(minWidth: 0,
               maxWidth: .infinity,
               minHeight: 0,
               idealHeight: .infinity,
               maxHeight: .infinity,
               alignment: .center)
        .background(
            LinearGradient(gradient: Gradient(colors: self.fruit.gradientColors),
            startPoint: .top,
            endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
        //.padding(.bottom, 20)
    }
}

struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruit: fruitsData[1])
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
