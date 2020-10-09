//
//  FruitRowView.swift
//  Fructus
//
//  Created by Glenn Von Posadas on 10/9/20.
//

import SwiftUI

struct FruitRowView: View {
    
    // MARK: - Properties
    
    var fruit: Fruit
    
    // MARK: - Body
    
    var body: some View {
        HStack {
            Image(fruit.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3),
                        radius: 3, x: 2, y: 2)
                .background(
                    LinearGradient(gradient: Gradient(colors: fruit.gradientColors),
                                   startPoint: .top,
                                   endPoint: .bottom)
                )
                .cornerRadius(8)
            
            VStack(alignment: .leading, spacing: 4) {
                Text(fruit.title)
                    .fontWeight(.bold)
                    .font(.title2)
                    .foregroundColor(.primary)
                Text(fruit.headline)
                    .fontWeight(.regular)
                    .font(.body)
                    .foregroundColor(.secondary)
                
            }//: VStack
        }//: HStack
    }
    
    // MARK: - Functions
}

struct FruitRowView_Previews: PreviewProvider {
    static var previews: some View {
        FruitRowView(fruit: fruitsData[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
