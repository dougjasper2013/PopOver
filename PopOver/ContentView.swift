//
//  ContentView.swift
//  PopOver
//
//  Created by Douglas Jasper on 2025-03-19.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedFruit: Fruit? = nil
    @State private var showPopover = true  // Show popover by default
    
    var body: some View {
        HStack {
            // Popover Menu (Shown by Default)
            FruitListView(selectedFruit: $selectedFruit)
                .popover(isPresented: $showPopover, attachmentAnchor: .rect(.bounds), arrowEdge: .leading) {
                    FruitListView(selectedFruit: $selectedFruit)
                }
                .frame(width: 250)
            
            // Main Content Area
            VStack {
                if let fruit = selectedFruit {
                    Text(fruit.name)
                        .font(.largeTitle)
                        .padding()
                    
                    Text(fruit.description)
                        .font(.title2)
                        .padding()
                } else {
                    Text("Select a fruit from the menu")
                        .font(.title)
                        .foregroundColor(.gray)
                        .padding()
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
}


#Preview {
    ContentView()
}
