//
//  GradientView.swift
//
//  Created by Guilherme Nunes Lobo on 28/11/23.
//

import SwiftUI

struct GradientView: View {
    // MARK: - Properties
    
    // State variable to control the animated hue rotation of the gradient
    @State private var animatedGradient = false
    
    // MARK: - Body
    
    var body: some View {
        // Linear gradient with multiple stops creating a colorful background
        LinearGradient(
            stops: [
                Gradient.Stop(color: Color(red: 0.49, green: 0.89, blue: 0.82), location: 0.00),
                Gradient.Stop(color: Color(red: 0.22, green: 0.35, blue: 0.33), location: 0.56),
                Gradient.Stop(color: Color(red: 0.1, green: 0.1, blue: 0.1), location: 1.00),
            ],
            startPoint: UnitPoint(x: 0.5, y: 0),
            endPoint: UnitPoint(x: 0.5, y: 1)
        )
        // Applying hue rotation animation based on the state
        .hueRotation(.degrees(animatedGradient ? 45 : 0))
        .ignoresSafeArea() // Ignore safe area insets to cover the entire screen
    }
}


