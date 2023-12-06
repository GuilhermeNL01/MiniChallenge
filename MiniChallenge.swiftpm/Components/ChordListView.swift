//
//  SwiftUIView.swift
//  
//
//  Created by Guilherme Nunes Lobo on 06/12/23.
//

import SwiftUI

struct ChordListView: View {
    @ObservedObject var viewModel: MusicChordViewModel

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Spacer()
            ForEach(viewModel.musicData) { musicItem in
                ChordRowView(musicItem: musicItem, viewModel: viewModel)
            }
            Spacer()
        }
        .padding()
    }
}


