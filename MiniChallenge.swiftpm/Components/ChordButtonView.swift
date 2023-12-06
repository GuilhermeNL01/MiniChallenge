//
//  SwiftUIView.swift
//  
//
//  Created by Guilherme Nunes Lobo on 06/12/23.
//

import SwiftUI

struct ChordButtonView: View {
    let chord: String
    @ObservedObject var viewModel: MusicChordViewModel

    var body: some View {
        Button(action: {
            viewModel.selectedChord = chord
            // Ação ao clicar no acorde
            print("Acorde \(chord) clicado!")

            // Verifica se o acorde específico foi tocado
            if chord == "C" {
                // Play C
                // Screen C

            }
            if chord == "D" {
                // Play D
                //Screen D

            }
            if chord == "Am" {
                // Play Am
                //Screen Am

            }
            if chord == "G" {
                // Play G
                //Screen G

            }
            
        }) {
            Text(chord)
                .foregroundColor(Color("ChordColor"))
                .font(.title)
                .fontWeight(.bold)
                .padding(8)
                .background(RoundedRectangle(cornerRadius: 5).stroke(Color.black, lineWidth: 2))
        }
    }
}


