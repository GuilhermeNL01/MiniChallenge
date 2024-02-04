//
//  MusicChordViewModel.swift
//  
//
//  Created by Guilherme Nunes Lobo on 06/12/23.
//

import Foundation

// MARK: - MusicChordViewModel Class

/// A view model class responsible for managing music chord data.
class MusicChordViewModel: ObservableObject {
    // MARK: - Published Properties
    
    // The selected chord, updated when a chord is selected
    @Published var selectedChord: String = ""
    
    // The array containing MusicItem objects representing lyrics and chords
    @Published var musicData: [MusicItem] = []
    
    // MARK: - Initialization
    
    /// Initializes the view model with sample lyrics and chords.
    init() {
        // Sample lyrics describing the importance of chords
        let lyrics = """
            So here are the chords, a songwriter's delight,
            In the language of music, shining bright.
            Whether major or minor, they play their part,
            A symphony of sounds, a work of art.
            """
        
        // Sample chords corresponding to each line in the lyrics
        let chords = ["C", "G", "Am", "D"]
        
        // Splitting the lyrics into lines and creating MusicItem objects
        let lines = lyrics.split(separator: "\n")
        musicData = Array(zip(lines.map { String($0) }, chords)).map { MusicItem(lyric: $0.0, chord: $0.1) }
    }
}
