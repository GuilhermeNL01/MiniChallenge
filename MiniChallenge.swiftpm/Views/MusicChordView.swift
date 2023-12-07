//
//  SwiftUIView.swift
//  
//
//  Created by Guilherme Nunes Lobo on 06/12/23.
//

import SwiftUI

struct MusicChordView: View {
    @StateObject private var viewModel = MusicChordViewModel()
    
    var body: some View {
            ZStack(alignment: .center) {
                
                Color("BackgroundColor")
                HStack{
                    VStack {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color("ButtonColor"))
                            .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
                            .padding(.all)
                            .overlay(ChordListView(viewModel: viewModel))
                            .frame(width: 700, height: 600)
                            
                        
                        HStack{
                            Spacer()
                            NavigationLink(destination: LastScreen(image: "Guitar", title: "Thank you very much for experiencing my scene!")) {
                                Text("End")
                                .fontWeight(.semibold)
                                .font(.system(size: 50))
                                .frame(width: 220, height: 40)
                                .padding()
                                .foregroundColor(Color("TextColor"))
                                .background(Color("ButtonColor"))
                                .cornerRadius(40)
                                .padding()
                                .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
                                .padding(.trailing)
                                .padding(.bottom)

                            }
                                            

                            
                        }
                    }
                    .edgesIgnoringSafeArea(.all)
                }
            }
        }
    }

#Preview{
    MusicChordView()
}
