//
//  SwiftUIView 2.swift
//  
//
//  Created by Guilherme Nunes Lobo on 06/12/23.
//
import SwiftUI

struct Am: View {
    @State private var isFilled = false
    
    var body: some View {
        NavigationStack{
            GeometryReader{ proxy in
                ZStack{
                    Color("BackgroundColor")
                        .ignoresSafeArea()
                    HStack{
                        
                        VStack {
                            ZStack{
                                HStack{
                                  
                                
                                    Spacer()
                                }
                                HStack{
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
                            HStack{
                                
                                
                                Spacer()
                                
                            }
                            Spacer()
                            
                            Image("Am")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .padding(.horizontal,16)
                                .frame(height: 400)
                            Spacer()
                            
                            Text("This is the Chord Am")
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
                            }, label: {
                                Image(systemName: isFilled ? "speaker.fill" : "speaker")
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
}

#Preview {
    NavigationStack{
        Am()
    }
}


