//
//  SwiftUIView.swift
//
//
//  Created by Guilherme Nunes Lobo on 27/11/23.
//

import SwiftUI

struct Home: View {
    @AppStorage("currentPage") var currentPage = 1
    @State private var isPresentingOnboarding = false
    var image: String
    var title: String
    
    var body: some View {
        ZStack{
            GradientView()
                .ignoresSafeArea()
            
            VStack {
                HStack{
                    Button(action: {
                        currentPage -= 3
                    }, label: {
                        Image(systemName: "questionmark")
                            .font(.largeTitle)
                            .foregroundColor(Color("TextColor"))
                            .padding(.vertical,10)
                            .frame(width: 50,height: 50)
                            .padding(.horizontal)
                            .background(Color("ButtonColor"))
                            .cornerRadius(10)
                            .padding()
                        
                    })
                    
                    Spacer()
                    
                }
                Spacer()
                
                Image(image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.horizontal,16)
                    .frame(height: 400)
                Spacer()
                
                Text(title)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .kerning(1.2)
                    .padding(.top)
                    .padding(.bottom, 5)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                Spacer()
                Button(action: {
                    
                    
                }, label: {
                    
                    
                    
                    if currentPage ==  3{
                        Text("Next")
                            .fontWeight(.semibold)
                            .font(.system(size: 50))
                            .frame(width: 220, height: 40)
                            .padding()
                            .foregroundColor(Color("TextColor"))
                            .background(Color("ButtonColor"))
                            .cornerRadius(40)
                            .padding()
                    }else{
                        Text("Next")
                            .fontWeight(.semibold)
                            .font(.system(size: 50))
                            .frame(width: 220, height: 40)
                            .padding()
                            .foregroundColor(Color("TextColor"))
                            .background(Color("ButtonColor"))
                            .cornerRadius(40)
                            .padding()
                            .shadow(radius: 10)
                    }
                    
                })
            }
        }
    }
}
#Preview {
    GradientView()
}



