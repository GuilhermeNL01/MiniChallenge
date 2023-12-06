//
//  SwiftUIView.swift
//  
//
//  Created by Guilherme Nunes Lobo on 06/12/23.
//

import SwiftUI

import SwiftUI

struct CustomChordView: View {
    var image: String
    var title: String
    @AppStorage("currentPage") var currentPage = 1

    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Button(action: {
                        // Customize the action based on currentPage if needed
                    }, label: {
                        Image(systemName: "questionmark")
                            .font(.largeTitle)
                            .foregroundColor(Color("TextColor"))
                            .padding(.vertical, 10)
                            .frame(width: 50, height: 50)
                            .padding(.horizontal)
                            .background(Color("ButtonColor"))
                            .cornerRadius(10)
                            .padding()
                            .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
                    })
                    Spacer()
                }
                Spacer()
                
                Image(image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.horizontal, 16)
                    .frame(height: 400)
                Spacer()
                
                Text(title)
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
                    // Handle button action based on currentPage if needed
                }, label: {
                    Text("text")
                        .fontWeight(.semibold)
                        .font(.system(size: 50))
                        .frame(width: 220, height: 40)
                        .padding()
                        .foregroundColor(Color("TextColor"))
                        .background(Color("ButtonColor"))
                        .cornerRadius(40)
                        .padding()
                        .shadow(radius: currentPage == 3 ? 10 : 0) // Customize shadow based on currentPage
                        .shadow(color: .white.opacity(0.25), radius: 2, x: 0, y: 4)
                })
            }
        }
    }
}



