//
//  ChordRowView.swift
//
//  Created by Guilherme Nunes Lobo on 06/12/23.
//

import SwiftUI

struct ChordRowView: View {
    // MARK: - Properties
    
    // Music item containing lyric and chord information
    let musicItem: MusicItem
    
    // View model responsible for managing music chord data
    @ObservedObject var viewModel: MusicChordViewModel
    
    // MARK: - Body
    
    var body: some View {
        // Horizontal stack to organize lyric and chord button
        HStack(spacing: 5) {
            // Displaying the lyric with title font size
            Text(musicItem.lyric)
                .font(.title)
                .padding(.trailing, 5) // Adding trailing padding
            // Displaying the chord button
            ChordButtonView(chord: musicItem.chord, viewModel: viewModel)
        }
    }
}
