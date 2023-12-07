//
//  SwiftUIView.swift
//  
//
//  Created by Guilherme Nunes Lobo on 07/12/23.
//

import SwiftUI

struct LastScreen: View {
    var image: String
    var title: String
    
    var body: some View {
            ZStack{
                GradientView()
                    .ignoresSafeArea()
                
                VStack {
                    Spacer()
                    
                    Image("Guitar")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(.horizontal,16)
                        .frame(height: 400)
                    Spacer()
                    
                    Text("Thank you very much for experiencing my scene!")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.horizontal)
                        .kerning(1.0)
                        .padding(.top)
                        .padding(.bottom, 5)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                    Spacer()
                    Button(action: {
                        
                        
                    }, label: {
                        
                        
                        NavigationLink {
                            MusicChordView()
                        } label: {
                            Text("Restart")
                                .fontWeight(.semibold)
                                .font(.system(size: 50))
                                .frame(width: 220, height: 40)
                                .padding()
                                .foregroundColor(Color("TextColor"))
                                .background(Color("ButtonColor"))
                                .cornerRadius(40)
                                .padding()
                                .shadow(color: .white.opacity(0.25), radius: 2, x: 0, y: 4)
                        }
                        
                        
                        
                    })
                }
            }
        }
    }







