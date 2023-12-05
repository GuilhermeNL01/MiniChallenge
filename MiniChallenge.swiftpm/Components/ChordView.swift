//
//  SwiftUIView.swift
//  
//
//  Created by Guilherme Nunes Lobo on 05/12/23.
//

import SwiftUI

struct ChordView: View {
    let lyricsWithChords: [(String, String)]

    var body: some View {
        VStack(alignment: .leading) {
            ForEach(lyricsWithChords, id: \.0) { lyric, chord in
                HStack(spacing: 0) {
                    Text(lyric)
                        .padding(5)
                }
                .overlay(
                    HStack {
                        Spacer()
                        Button(action: {
                            // Ação do botão
                            print("Acorde: \(chord)")
                        }) {
                            Text(chord)
                                .foregroundColor(Color("ChordColor"))
                                .padding(5)
                                 
                                .offset(x: chord == "G" ? 100 : 0)
                        }
                    }
                    .padding(.top, -20), alignment: .top
                )
            }
        }
        .padding()
    }
}
