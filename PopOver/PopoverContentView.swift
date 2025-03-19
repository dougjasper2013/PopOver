//
//  PopoverContentView.swift
//  PopOver
//
//  Created by Douglas Jasper on 2025-03-19.
//

import SwiftUI

struct PopoverContentView: View {
    var body: some View {
        VStack {
            Text("Popover Content")
                .font(.title)
                .padding()
            
            Text("This is a popover displayed on iPad.")
                .padding()
            
            Button("Close") {
                // Close the popover when dismissed
                if let scene = UIApplication.shared.connectedScenes.first as? UIWindowScene {
                    scene.windows.first?.rootViewController?.dismiss(animated: true)
                }
            }
            .buttonStyle(.borderedProminent)
            .padding()
        }
        .frame(width: 300, height: 200) // Popover size
    }
}

#Preview {
    PopoverContentView()
}
