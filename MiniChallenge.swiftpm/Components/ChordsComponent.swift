//
//  SwiftUIView.swift
//  
//
//  Created by Guilherme Nunes Lobo on 04/12/23.
//

import SwiftUI

struct ChordsComponent: View {
    let songLyricsWithChords: [(String, String)] = [
        ("chords example chords example chords example ", "A"),
        ("chords example chords example chords example ", "G"),
        ("chords example chords example chords example ", "Am"),
        ("chords example chords example chords example ", "F"),
        ("chords example chords example chords example ", "G"),
        ("chords example chords example chords example ", "C"),
    ]

    var body: some View {
        ChordView(lyricsWithChords: songLyricsWithChords)
    }
}


#Preview {
    ChordsComponent()
}
