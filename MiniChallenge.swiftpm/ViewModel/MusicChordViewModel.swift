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
            In the world of tunes and melodies,
            Where guitar strings hum with ease.
            There's a secret code, a musician's key,
            It's called a chord, as easy as can be.

            A letter or two, maybe even three,
            Combined with rhythm, in sweet harmony.
            Strum a C, a G, or an Am,
            Each chord tells a story, a musical jam.

            And as you play, with fingers agile,
            Notes and lyrics, like a flowing mile.
            A chord sheet guides, a player's friend,
            From intro to outro, where stories blend.

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
