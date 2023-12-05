//
//  SwiftUIView.swift
//
//
//  Created by Guilherme Nunes Lobo on 28/11/23.
//

import SwiftUI

struct ScreenView: View {
    
    @AppStorage("currentPage") var currentPage = 1
    
    var image: String
    var title: String
    var details: String
    
    var body: some View {
        VStack{
            HStack{
                if currentPage == 1{
                    Text("Chords")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .kerning(1.4)
                } else {
                    Button(action: {
                        currentPage -= 1
                    }, label: {
                        Image(systemName: "chevron.left")
                            .font(.largeTitle)
                            .foregroundColor(Color("TextColor"))
                            .padding(.vertical,10)
                            .frame(width: 50,height: 50)
                            .padding(.horizontal)
                            .background(Color("ButtonColor"))
                            .cornerRadius(10)
                    })
                }
              
                Spacer()
                
                Button(action: {
                    currentPage = 4
                }, label: {
                    Text("Skip")
                        .fontWeight(.semibold)
                        .kerning(1.2)
                        .font(.system(size: 30))
                        .frame(width: 100, height: 30)
                        .padding()
                        .foregroundColor(Color("TextColor"))
                        .background(Color("ButtonColor"))
                        .cornerRadius(40)
                        .padding()
                        
                })
            }.padding()
                .foregroundColor(.black)
            Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.horizontal,16)
                .frame(height: 400)
            
            
            Spacer(minLength: 80)
            
            
            Text(title)
                .font(.largeTitle)
                .fontWeight(.bold)
                .kerning(1.2)
                .padding(.top)
                .padding(.bottom, 5)
                .multilineTextAlignment(.center)
                .foregroundColor(Color("TextColor"))
            
//            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry.")
//                .font(.body)
//                .fontWeight(.regular)
//                .kerning(1.2)
//                .padding([.leading,.trailing] )
//                .multilineTextAlignment(.center)
            
            Spacer(minLength: 0)
            HStack{
                if currentPage == 1 {
                    Color("TextColor").frame(height: 20 /  UIScreen.main.scale)
                        .cornerRadius(10)

                    Color.gray.frame(height: 20 /  UIScreen.main.scale)
                        .cornerRadius(10)

                    Color.gray.frame(height: 20 /  UIScreen.main.scale)
                        .cornerRadius(10)

                }
                
                else if currentPage == 2 {
                    Color.gray.frame(height: 20 /  UIScreen.main.scale)
                        .cornerRadius(10)

                    Color("TextColor").frame(height: 20 /  UIScreen.main.scale)
                        .cornerRadius(10)

                    Color.gray.frame(height: 20 /  UIScreen.main.scale)
                        .cornerRadius(10)
                }
                
                else if currentPage == 3 {
                    Color.gray.frame(height: 20 /  UIScreen.main.scale)
                        .cornerRadius(10)

                    Color.gray.frame(height: 20 /  UIScreen.main.scale)
                        .cornerRadius(10)

                    Color("TextColor").frame(height: 20 /  UIScreen.main.scale)
                        .cornerRadius(10)

                }
                
                
               

            }
            .padding(.horizontal, 35)
            Spacer()
            Button(action: {
                if currentPage <= totalPages{
                    currentPage += 1
                }
                
                else {
                    currentPage = 1
                }
                    
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
                }
               
            })
        }
    }
}

