//
//  LastScreen.swift
//  
//
//  Created by Guilherme Nunes Lobo on 07/12/23.
//

import SwiftUI

// MARK: - Last Screen View

/// The last screen view with a congratulatory message and an image.
struct LastScreen: View {
    // Image and title properties for customizing the last screen
    var image: String
    var title: String
    
    // MARK: - Body
    
    var body: some View {
        // ZStack for layering views
        ZStack {
            // Background gradient view covering the entire safe area
            GradientView()
                .ignoresSafeArea()
            
            // Main content stack
            VStack {
                Spacer()
                
                // Image representing the last screen content
                Image("Guitar")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.horizontal, 16)
                    .frame(height: 400)
                
                Spacer()
                
                // Congratulatory message text with styling
                Text("Congratulations! Now you can try playing some chords by yourself.")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.horizontal)
                    .kerning(1.0)
                    .padding(.top)
                    .padding(.bottom, 5)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .padding(.horizontal)
                
                Spacer()
            }
        }
    }
}
