//
//  SwiftUIView.swift
//  
//
//  Created by Guilherme Nunes Lobo on 05/12/23.
//

import SwiftUI

struct MusicChordView: View {
    @State private var selectedChord: String = ""

    let musicData: [MusicItem]

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

    var body: some View {
        ZStack(alignment: .center) {
            Rectangle()
                .foregroundColor(Color(red: 0.85, green: 0.85, blue: 0.85))
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            VStack {
                HStack {
                    Text("My Chords")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .kerning(1.4)
                        .padding(.horizontal)
                }
                VStack(alignment: .leading, spacing: 20) {
                    Spacer()
                    ForEach(musicData) { musicItem in
                        HStack(spacing: 5) {
                            Text(musicItem.lyric)
                                .font(.title)
                                .padding(.trailing, 5)
                            Button(action: {
                                // Ação ao clicar no acorde
                                print("Acorde \(musicItem.chord) clicado!")

                                // Verifica se o acorde específico foi tocado
                                if musicItem.chord == "C" {
                                    // Faça alguma coisa específica para o acorde C
                                    print("You clicked on the C chord!")
                                }
                            }) {
                                Text(musicItem.chord)
                                    .foregroundColor(Color("ChordColor"))
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .padding(8)
                                    .background(RoundedRectangle(cornerRadius: 5).stroke(Color.black, lineWidth: 2))
                            }
                        }
                    }
                    Spacer()
                }
                .padding()
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}
#Preview {
    MusicChordView()
}




