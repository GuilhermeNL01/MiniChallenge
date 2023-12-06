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
                        .padding(.all)
                        .overlay(ChordListView(viewModel: viewModel))

                    HStack{
                        Spacer()
                        Button(action: {
                            //LAST SCREEN
                            
                        }, label: {
                            
                            
                            
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
                        }
                               
                        )
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
