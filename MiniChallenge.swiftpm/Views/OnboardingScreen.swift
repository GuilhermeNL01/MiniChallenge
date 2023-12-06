//
//  SwiftUIView.swift
//
//
//  Created by Guilherme Nunes Lobo on 27/11/23.
//

import SwiftUI
var totalPages = 3


struct OnboardingScreen: View {
    @AppStorage("currentPage") var currentPage = 1
    let totalPages = 3

    var body: some View {
        ZStack {
            if currentPage == 1 {
                ScreenView(image: "Guitar", title: "This Scene has the purpose of showing some chords that are essential in the life of a guitarist.", details: "")
            } else if currentPage == 2 {
                ScreenView(image: "Chordsmini", title: "This is an example of a Chords, and it serves to guide the musician on how to play the song. When you click on a chord you will see its specifications.", details: "")
            } else if currentPage == 3 {
                ScreenView(image: "Hand", title: "To play a chord, you need to know the finger directions.", details: "")
            }
            else if currentPage == 5 {
                ScreenView(image: "C", title: "Chord C", details: "This is the Chord C")
            }
        }
    }
}

#Preview {
    OnboardingScreen()
}

