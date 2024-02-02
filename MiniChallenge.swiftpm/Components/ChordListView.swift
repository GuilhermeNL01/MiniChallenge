//
//  ChordListView.swift
//  
//
//  Created by Guilherme Nunes Lobo on 06/12/23.
//

import SwiftUI

struct ChordListView: View {
    // MARK: - Properties
    
    // View model responsible for managing music chord data
    @ObservedObject var viewModel: MusicChordViewModel
    
    // MARK: - Body
    
    var body: some View {
        // Vertical stack to organize chord rows
        VStack(alignment: .leading, spacing: 20) {
            Spacer() // Add space at the top
            // Loop through each music item in the view model
            ForEach(viewModel.musicData) { musicItem in
                // Display each chord row
                ChordRowView(musicItem: musicItem, viewModel: viewModel)
            }
            Spacer() // Add space at the bottom
        }
        .padding() // Add padding to the entire view
    }
}
