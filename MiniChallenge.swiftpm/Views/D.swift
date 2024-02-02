//
//  D.swift
//  
//
//  Created by Guilherme Nunes Lobo on 06/12/23.
//

import SwiftUI
import AVFoundation

// MARK: - D View

/// A SwiftUI view representing the D major chord details.
struct D: View {
    // MARK: - Properties
    
    // State variable for managing the audio player and play/pause state
    @State private var audioPlayer: AVAudioPlayer?
    @State private var isPlaying: Bool = false
    
    // MARK: - Body
    
    var body: some View {
        // Navigation stack to enable navigation within the app
        NavigationStack {
            // GeometryReader for responsive layout
            GeometryReader { proxy in
                ZStack {
                    // Background color covering the entire safe area
                    Color("BackgroundColor")
                        .ignoresSafeArea()
                    
                    // Main content stack
                    HStack {
                        VStack {
                            // Chord title and image section
                            ZStack {
                                HStack {
                                    Spacer()
                                }
                                HStack {
                                    Spacer()
                                    // Chord title styling
                                    Text("D")
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
                            
                            // Image representing the D major chord
                            Image("D")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .padding(.horizontal, 16)
                                .frame(height: 400)
                            Spacer()
                            
                            // Chord description section
                            Text("D major chord consists of the notes D, F#, and A. It's widely used in various musical genres, offering a bright and cheerful sound.")
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
                            
                            // Play/pause button for audio
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
    
    // MARK: - Audio Playback
    
    /// Plays the audio associated with the D major chord.
    func playAudio() {
        guard let audioURL = Bundle.main.url(forResource: "D", withExtension: ".mp3") else {
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

