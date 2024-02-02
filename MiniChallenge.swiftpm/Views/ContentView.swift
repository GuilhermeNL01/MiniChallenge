//
//  ContentView.swift
//  
//
//  Created by Guilherme Nunes Lobo on 28/11/23.
//

import SwiftUI

// MARK: - ContentView View

/// The main view that determines whether to show onboarding or home screen based on the currentPage.
struct ContentView: View {
    // MARK: - AppStorage Property
    
    // App storage for tracking current page
    @AppStorage("currentPage") var currentPage = 1
    
    // MARK: - Body
    
    var body: some View {
        // Checking the current page to determine the view to display
        if currentPage > totalPages {
            // Displaying the home screen with a welcome message and image
            Home(image: "Guitar2", title: "Start your Journey on Guitar Chords Now!")
        } else {
            // Displaying the onboarding screen
            OnboardingScreen()
        }
    }
}
