//
//  ChordButtonView.swift
//  
//
//  Created by Guilherme Nunes Lobo on 06/12/23.
//

import SwiftUI

struct ChordButtonView: View {
    // MARK: - Properties
    
    // The chord associated with this button
    let chord: String
    
    // View model responsible for managing music chord data
    @ObservedObject var viewModel: MusicChordViewModel
    
    // MARK: - Body
    
    var body: some View {
        NavigationLink(destination: destinationView(for: chord)) {
            // Text displaying the chord label
            Text(chord)
                .foregroundColor(Color("ChordColor")) // Setting the text color
                .font(.title) // Adjusting the font size
                .fontWeight(.bold) // Making the text bold
                .padding(8) // Adding padding to the text
                .background(RoundedRectangle(cornerRadius: 5).stroke(Color.black, lineWidth: 2)) // Adding a border to the text
        }
    }
    
    // MARK: - Private Methods
    
    // Determine the destination view based on the chord
    private func destinationView(for chord: String) -> some View {
        switch chord {
        case "C":
            return AnyView(C()) // Navigating to view for chord C
        case "D":
            return AnyView(D()) // Navigating to view for chord D
        case "Am":
            return AnyView(Am()) // Navigating to view for chord Am
        case "G":
            return AnyView(G()) // Navigating to view for chord G
        default:
            return AnyView(EmptyView())  // Default case for unknown chords
        }
    }
}
