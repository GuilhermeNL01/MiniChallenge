//
//  SwiftUIView.swift
//
//
//  Created by Guilherme Nunes Lobo on 28/11/23.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("currentPage") var currentPage = 1

    var body: some View {

        if currentPage > totalPages {
            Home( image: "Guitar2", title: "Start your Journey on Guitar Chords Now!")
        }
        else{
            OnboardingScreen()
        }
        
    }
}
