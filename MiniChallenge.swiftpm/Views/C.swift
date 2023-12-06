//
//  SwiftUIView.swift
//  
//
//  Created by Guilherme Nunes Lobo on 06/12/23.
//

import SwiftUI

struct C: View {
    @State private var isFilled = false

    var body: some View {
        
        GeometryReader{ proxy in
            ZStack{
                Color("BackgroundColor")
                    .ignoresSafeArea()
                HStack{
                    
                    VStack {
                        ZStack{
                            HStack{
                                Button(action: {
                                    
                                }, label: {
                                    Image(systemName: "chevron.left")
                                        .font(.largeTitle)
                                        .foregroundColor(Color("TextColor"))
                                        .padding(.vertical,10)
                                        .frame(width: 50,height: 50)
                                        .padding(.horizontal)
                                        .background(Color("ButtonColor"))
                                        .cornerRadius(10)
                                        .padding()
                                        .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
                                })
                                Spacer()
                            }
                            HStack{
                                Spacer()
                                Text("C")
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
                        
                        Image("C")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(.horizontal,16)
                            .frame(height: 400)
                        Spacer()
                        
                        Text("This is the Chord C")
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

#Preview {
    C()
}
