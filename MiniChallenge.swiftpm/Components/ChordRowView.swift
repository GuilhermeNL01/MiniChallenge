//
//  SwiftUIView.swift
//  
//
//  Created by Guilherme Nunes Lobo on 06/12/23.
//

import SwiftUI

struct ChordRowView: View {
    let musicItem: MusicItem
    @ObservedObject var viewModel: MusicChordViewModel

    var body: some View {
        HStack(spacing: 5) {
            Text(musicItem.lyric)
                .font(.title)
                .padding(.trailing, 5)
            ChordButtonView(chord: musicItem.chord, viewModel: viewModel)
        }
    }
}

