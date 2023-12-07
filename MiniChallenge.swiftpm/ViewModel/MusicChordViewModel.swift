//
//  File.swift
//  
//
//  Created by Guilherme Nunes Lobo on 06/12/23.
//

import Foundation
class MusicChordViewModel: ObservableObject {
    @Published var selectedChord: String = ""
    @Published var musicData: [MusicItem] = []

    init() {
        let lyrics = """
            So here's to chords, a songwriter's delight,
            In the language of music, shining bright.
            Whether major or minor, they play their part,
            A symphony of sounds, a work of art.
            """

        let chords = ["C", "G", "Am", "D"]

        let lines = lyrics.split(separator: "\n")
        musicData = Array(zip(lines.map { String($0) }, chords)).map { MusicItem(lyric: $0.0, chord: $0.1) }
    }
}
