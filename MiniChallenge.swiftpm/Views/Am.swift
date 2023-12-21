//
//  Am.swift
//
//
//  Created by Guilherme Nunes Lobo on 06/12/23.
//

import SwiftUI
import AVFoundation

struct Am: View {
    @State private var audioPlayer: AVAudioPlayer?
    @State private var isPlaying: Bool = false
    
    var body: some View {
        NavigationStack {
            GeometryReader { proxy in
                ZStack {
                    Color("BackgroundColor")
                        .ignoresSafeArea()
                    HStack {
                        VStack {
                            ZStack {
                                HStack {
                                    Spacer()
                                }
                                HStack {
                                    Spacer()
                                    Text("Am")
                                        .font(.largeTitle)
                                        .fontWeight(.semibold)
                                        .kerning(1.4)
                                        .padding(.trailing)
                                        .padding(.top)
                                    Spacer()
                                }
                            }
                            HStack {
                                Spacer()
                            }
                            Spacer()
                            
                            Image("Am")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .padding(.horizontal, 16)
                                .frame(height: 400)
                            Spacer()
                            
                            Text("Am, or A minor chord, comprises the notes A, C, and E. It has a softer and melancholic sound compared to major chords")
                                .font(.largeTitle)
                                .foregroundStyle(Color.black)
                                .fontWeight(.bold)
                                .padding(.horizontal)
                                .kerning(1.0)
                                .padding(.top)
                                .padding(.bottom, 5)
                                .multilineTextAlignment(.center)
                                .padding(.horizontal)
                            
                            Spacer()
                            Button(action: {
                                self.isPlaying.toggle()
                                if isPlaying {
                                    self.playAudio()
                                } else {
                                    self.audioPlayer?.pause()
                                }
                            }, label: {
                                Image(systemName: isPlaying ? "pause.fill" : "play.fill")
                                    .fontWeight(.semibold)
                                    .font(.system(size: 50))
                                    .frame(width: 220, height: 40)
                                    .padding()
                                    .foregroundColor(Color("TextColor"))
                                    .background(Color("ButtonColor"))
                                    .cornerRadius(40)
                                    .padding()
                                    .shadow(color: .white.opacity(0.25), radius: 2, x: 0, y: 4)
                            })
                        }
                    }
                }
            }
        }
    }
    
    func playAudio() {
        guard let audioURL = Bundle.main.url(forResource: "Am", withExtension: ".mp3") else {
            return
        }
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: audioURL)
            audioPlayer?.play()
        } catch {
            print("Error playing audio: \(error.localizedDescription)")
        }
    }
}

#Preview {
    NavigationStack {
        Am()
    }
}

