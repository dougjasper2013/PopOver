//
//  ContentView.swift
//  PopOver
//
//  Created by Douglas Jasper on 2025-03-19.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedFruit: Fruit? = nil
    @State private var columnVisibility: NavigationSplitViewVisibility = .automatic

    var body: some View {
        NavigationSplitView(columnVisibility: $columnVisibility) {
            // Sidebar (Collapsible)
            FruitListView(selectedFruit: $selectedFruit)
                .navigationTitle("Fruits")
        } detail: {
            // Main Content View
            VStack {
                if let fruit = selectedFruit {
                    Text(fruit.name)
                        .font(.largeTitle)
                        .padding()

                    Text(fruit.description)
                        .font(.title2)
                        .padding()

                    Button("Back to Menu") {
                        columnVisibility = .all // Show sidebar again
                    }
                    .buttonStyle(.borderedProminent)
                    .padding()
                } else {
                    Text("Select a fruit from the menu")
                        .font(.title)
                        .foregroundColor(.gray)
                        .padding()
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .navigationTitle(selectedFruit?.name ?? "Fruit Details")
        }
        .onChange(of: selectedFruit) { _, _ in
            columnVisibility = .detailOnly // Collapse sidebar when fruit is selected
        }
    }
}


#Preview {
    ContentView()
}
