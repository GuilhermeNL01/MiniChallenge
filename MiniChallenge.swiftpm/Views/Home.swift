//
//  Home.swift
//  
//
//  Created by Guilherme Nunes Lobo on 27/11/23.
//

import SwiftUI

// MARK: - Home View

/// The home screen view with an image, title, and navigation to the MusicChordView.
struct Home: View {
    // MARK: - AppStorage Property
    
    // App storage for tracking current page
    @AppStorage("currentPage") var currentPage = 1
    
    // State property for controlling the presentation of onboarding screen
    @State private var isPresentingOnboarding = false
    
    // Image and title properties for customizing the home screen
    var image: String
    var title: String
    
    // MARK: - Body
    
    var body: some View {
        // Navigation stack to enable navigation within the app
        NavigationStack {
            // ZStack for layering views
            ZStack {
                // Background gradient view covering the entire safe area
                GradientView()
                    .ignoresSafeArea()
                
                // Main content stack
                VStack {
                    // HStack for the information button
                    HStack {
                        Button(action: {
                            // Action to navigate to the first page of onboarding
                            currentPage = 1
                        }, label: {
                            // Information button styling
                            Image(systemName: "info")
                                .font(.largeTitle)
                                .foregroundColor(Color("TextColor"))
                                .padding(.vertical, 10)
                                .frame(width: 50, height: 50)
                                .padding(.horizontal)
                                .background(Color("ButtonColor"))
                                .cornerRadius(10)
                                .padding()
                                .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
                        })
                        
                        Spacer()
                    }
                    Spacer()
                    
                    // Image representing the home screen content
                    Image(image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(.horizontal, 16)
                        .frame(height: 400)
                    
                    Spacer()
                    
                    // Title text with styling
                    Text(title)
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
                    
                    // Navigation link to the MusicChordView
                    NavigationLink {
                        MusicChordView()
                    } label: {
                        // "Go" button styling
                        Text("Go")
                            .fontWeight(.semibold)
                            .font(.system(size: 50))
                            .frame(width: 220, height: 40)
                            .padding()
                            .foregroundColor(Color("TextColor"))
                            .background(Color("ButtonColor"))
                            .cornerRadius(40)
                            .padding()
                            .shadow(color: .white.opacity(0.25), radius: 2, x: 0, y: 4)
                    }
                }
            }
        }
    }
}
