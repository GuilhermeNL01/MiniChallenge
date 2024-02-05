//
//  MusicChordView.swift
// 
//
//  Created by Guilherme Nunes Lobo on 06/12/23.
//

import SwiftUI

// MARK: - Music Chord View

/// The main view for the music chord experience, displaying a list of chords and an "End" button.
struct MusicChordView: View {
    // Observable object to hold the view model for music chords
    @StateObject private var viewModel = MusicChordViewModel()
    @State private var isTextVisible = true

    // MARK: - Body
    
    var body: some View {
        // ZStack for layering views with alignment set to center
        ZStack(alignment: .center) {
            // Background color
            Color("BackgroundColor")
            // HStack for horizontal arrangement
            HStack {
                // VStack for vertical arrangement
                VStack {
                    Text("Try to Explore the Chords!")
                        .fontWeight(.semibold)
                        .font(.system(size: 40))
                        .padding()
                        .foregroundColor(Color("TextColor"))
                        .opacity(isTextVisible ? 1.0 : 0.0)
                        .onAppear {
                            withAnimation(Animation.easeInOut(duration: 1).repeatCount(7)) {
                                self.isTextVisible.toggle()
                            }
                            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                                withAnimation {
                                    self.isTextVisible = false
                                }
                            }
                        }
                    // RoundedRectangle to encapsulate chord list view
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color("ButtonColor"))
                        .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
                        .padding(.all)
                        .overlay(ChordListView(viewModel: viewModel))
                        .frame(width: 700, height: 600)
                    
                    // HStack for horizontal arrangement
                    HStack {
                        Spacer()
                        
                        // Navigation link to the LastScreen view
                        NavigationLink(destination: LastScreen(image: "Guitar", title: "Thank you very much for experiencing my scene!")) {
                            Text("End")
                                .fontWeight(.semibold)
                                .font(.system(size: 50))
                                .frame(width: 220, height: 40)
                                .padding()
                                .foregroundColor(Color("TextColor"))
                                .background(Color("ButtonColor"))
                                .cornerRadius(40)
                                .padding()
                                .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
                                .padding(.trailing)
                                .padding(.bottom)
                        }
                    }
                }
                .edgesIgnoringSafeArea(.all)
            }
        }
    }
}


