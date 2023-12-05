//
//  SwiftUIView.swift
//  
//
//  Created by Guilherme Nunes Lobo on 04/12/23.
//

import SwiftUI

struct ChordsComponent: View {
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 775.33203, height: 751.82501)
                .background(Color(red: 0.85, green: 0.85, blue: 0.85))
                .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
                .overlay(
                    Rectangle()
                        .inset(by: 0.5)
                        .stroke(.black, lineWidth: 1)
                )
            VStack{
                Spacer()

                Text("chords example chords example chords example chords example chords example chords example chords example chords example chords example chords example chords example chords example ")
                  .font(Font.custom("Inter", size: 40))
                  .foregroundColor(.black)
                  .frame(width: 723.29633, height: 992.12982, alignment: .topLeading)
                   }
        }
    }
}

#Preview {
    ChordsComponent()
}
