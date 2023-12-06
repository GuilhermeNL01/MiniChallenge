//
//  SwiftUIView.swift
//
//
//  Created by Guilherme Nunes Lobo on 28/11/23.
//

import SwiftUI

struct GradientView: View {
    @State private var animatedGradient = false
    var body: some View {
        LinearGradient(
        stops: [
        Gradient.Stop(color: Color(red: 0.49, green: 0.89, blue: 0.82), location: 0.00),
        Gradient.Stop(color: Color(red: 0.22, green: 0.35, blue: 0.33), location: 0.56),
        Gradient.Stop(color: Color(red: 0.1, green: 0.1, blue: 0.1), location: 1.00),
        ],
        startPoint: UnitPoint(x: 0.5, y: 0),
        endPoint: UnitPoint(x: 0.5, y: 1)
        )
            .hueRotation(.degrees(animatedGradient ? 45: 0))
            .ignoresSafeArea()
    }
}

#Preview {
    GradientView()
}
