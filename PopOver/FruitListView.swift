//
//  FruitListView.swift
//  PopOver
//
//  Created by Douglas Jasper on 2025-03-19.
//

import SwiftUI

struct FruitListView: View {
    @Binding var selectedFruit: Fruit?
    
    let fruits: [Fruit] = [
        Fruit(name: "Apple", description: "A sweet red fruit."),
        Fruit(name: "Banana", description: "A long yellow fruit."),
        Fruit(name: "Cherry", description: "A small round red fruit."),
        Fruit(name: "Orange", description: "A citrus fruit rich in vitamin C.")
    ]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Fruits Menu")
                .font(.headline)
                .padding()
            
            List(fruits) { fruit in
                Button(action: {
                    selectedFruit = fruit
                }) {
                    Text(fruit.name)
                        .font(.title3)
                        .padding(.vertical, 5)
                }
            }
        }
        .frame(width: 250) // Set width of the menu
    }
}


// #Preview {
//    FruitListView()
// }
