//
//  SwiftUIView 3.swift
//  
//
//  Created by Guilherme Nunes Lobo on 06/12/23.
//

import SwiftUI
import AVFoundation

struct D: View {
    @State private var isFilled = false
    @State private var audioPlayer: AVAudioPlayer?

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

                            Image("D")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .padding(.horizontal, 16)
                                .frame(height: 400)
                            Spacer()

                            Text("This is the Chord D")
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
                                self.isFilled.toggle()
                                self.toggleAudio()
                            }, label: {
                                Image(systemName: isFilled ? "pause.fill" : "play.fill")
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

    func toggleAudio() {
        print("Toggling audio. isFilled: \(isFilled)")
        print("Playing audio")

        guard let audioURL = Bundle.main.url(forResource: "Sounds/Am", withExtension: "mp3") else {
            print("Audio file not found")
            return
        }

        do {
            audioPlayer = try AVAudioPlayer(contentsOf: audioURL)
            audioPlayer?.play()
        } catch {
            print(error.localizedDescription)
        }
        if isFilled {
            print("Pausing audio")
            audioPlayer?.pause()
        } else {
            
            print("Pausing audio")
            audioPlayer?.pause()
        }
    }

}


#Preview {
    D()
}
