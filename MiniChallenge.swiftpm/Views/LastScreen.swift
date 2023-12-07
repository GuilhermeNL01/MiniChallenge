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
                   
                }
            }
        }
    }







