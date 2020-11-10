//
//  FruitListView.swift
//  Fructus
//
//  Created by Glenn Von Posadas on 10/9/20.
//

import SwiftUI

struct FruitListView: View {
    
    // MARK: - Properties
    
    var fruits: [Fruit] = fruitsData
    
    // MARK: - Body
    
    var body: some View {
        NavigationView {
            List {
                ForEach(self.fruits.shuffled()) { fruit in
                    FruitRowView(fruit: fruit)
                        .padding(.vertical, 4)
                }
            } //: List
            .navigationTitle("Fruits")
        } //: Navigation
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FruitListView(fruits: fruitsData)
            .previewDevice("iPhone 11 Pro")
    }
}
