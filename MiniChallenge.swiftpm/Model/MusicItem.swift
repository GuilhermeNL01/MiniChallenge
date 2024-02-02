//
//  MusicItem.swift
//  
//
//  Created by Guilherme Nunes Lobo on 05/12/23.
//

import Foundation

// MARK: - MusicItem Struct

/// A structure representing a musical item containing lyric and chord information.
struct MusicItem: Identifiable {
    let id = UUID()    // Unique identifier for each MusicItem
    let lyric: String  // Lyric associated with the music item
    let chord: String  // Chord associated with the music item

}
