//
//  File.swift
//  
//
//  Created by Guilherme Nunes Lobo on 05/12/23.
//
import Foundation

struct MusicItem: Identifiable {
    let id = UUID()
    let lyric: String
    let chord: String
}
