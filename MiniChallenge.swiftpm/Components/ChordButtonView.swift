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
        NavigationLink(destination: destinationView(for: chord)) {
            Text(chord)
                .foregroundColor(Color("ChordColor"))
                .font(.title)
                .fontWeight(.bold)
                .padding(8)
                .background(RoundedRectangle(cornerRadius: 5).stroke(Color.black, lineWidth: 2))
        }
    }
    
    private func destinationView(for chord: String) -> some View {
        switch chord {
        case "C":
            return AnyView(C())
        case "D":
            return AnyView(D())
        case "Am":
            return AnyView(Am())
        case "G":
            return AnyView(G())
        default:
            return AnyView(EmptyView()) 
        }
    }
}
