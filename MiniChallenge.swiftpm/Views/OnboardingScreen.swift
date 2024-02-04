//
//  OnboardingScreen.swift
//  
//
//  Created by Guilherme Nunes Lobo on 27/11/23.
//

import SwiftUI
var totalPages = 3

// MARK: - Onboarding Screen View

/// Onboarding screen view with multiple pages displaying information about the app.
struct OnboardingScreen: View {
    // AppStorage property to keep track of the current page
    @AppStorage("currentPage") var currentPage = 1
    
    // Constant representing the total number of pages in onboarding
    let totalPages = 3
    
    // MARK: - Body
    
    var body: some View {
        // ZStack for layering views
        ZStack {
            // Conditional rendering based on the current page
            if currentPage == 1 {
                // Displaying the first screen with image, title, and details
                ScreenView(image: "Guitar", title: "This scene has the purpose of showing some chords that are essential in the life of a guitarist.", details: "")
            } else if currentPage == 2 {
                // Displaying the second screen with image, title, and details
                ScreenView(image: "Chordsmini", title: "This is an example of a chord, and it serves to guide the musician on how to play the song. When you click on a chord, you will see the details.", details: "")
            } else if currentPage == 3 {
                // Displaying the third screen with image, title, and details
                ScreenView(image: "Hand", title: "To play a chord, you need to know the fingers directions.", details: "")
            }
        }
    }
}

