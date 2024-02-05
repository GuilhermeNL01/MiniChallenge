//
//  ScreenView.swift
//  
//
//  Created by Guilherme Nunes Lobo on 28/11/23.
//

import SwiftUI

struct ScreenView: View {
    // MARK: - Properties
    
    // App storage for tracking current page
    @AppStorage("currentPage") var currentPage = 1
    
    // Image, title, and details for the screen
    var image: String
    var title: String
    var details: String
    
    // MARK: - Body
    
    var body: some View {
        VStack {
            // Header section containing title and navigation buttons
            HStack {
                if currentPage == 1 {
                    Text("Chords")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .kerning(1.4)
                } else {
                    // Button to navigate to the previous page
                    Button(action: {
                        currentPage -= 1
                    }, label: {
                        Image(systemName: "chevron.left")
                            .font(.largeTitle)
                            .foregroundColor(Color("TextColor"))
                            .padding(.vertical, 10)
                            .frame(width: 50, height: 50)
                            .padding(.horizontal)
                            .background(Color("ButtonColor"))
                            .cornerRadius(10)
                            .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
                    })
                }
                
                Spacer()
                
                // Button to skip to the last page
//                Button(action: {
//                    currentPage = 4
//                }, label: {
//                    Text("Skip")
//                        .fontWeight(.semibold)
//                        .kerning(1.2)
//                        .font(.system(size: 30))
//                        .frame(width: 100, height: 30)
//                        .padding()
//                        .foregroundColor(Color("TextColor"))
//                        .background(Color("ButtonColor"))
//                        .cornerRadius(40)
//                        .padding()
//                        .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
//                })
            }
            .padding()
            .foregroundColor(.black)
            
            Spacer(minLength: 0)
            
            // Image section
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.horizontal, 16)
                .frame(height: 400)
                .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
            
            Spacer(minLength: 80)
            
            // Title section
            Text(title)
                .font(.largeTitle)
                .fontWeight(.bold)
                .kerning(1.2)
                .padding(.top)
                .padding(.horizontal)
                .padding(.bottom, 5)
                .multilineTextAlignment(.center)
                .foregroundColor(Color("TextColor"))
            
            Spacer(minLength: 0)
            
            // Page indicator dots
            HStack {
                // Different colors based on the current page
                if currentPage == 1 {
                    Color("TextColor").frame(height: 20 / UIScreen.main.scale)
                        .cornerRadius(10)
                    Color.gray.frame(height: 20 / UIScreen.main.scale)
                        .cornerRadius(10)
                    Color.gray.frame(height: 20 / UIScreen.main.scale)
                        .cornerRadius(10)
                } else if currentPage == 2 {
                    Color.gray.frame(height: 20 / UIScreen.main.scale)
                        .cornerRadius(10)
                    Color("TextColor").frame(height: 20 / UIScreen.main.scale)
                        .cornerRadius(10)
                    Color.gray.frame(height: 20 / UIScreen.main.scale)
                        .cornerRadius(10)
                } else if currentPage == 3 {
                    Color.gray.frame(height: 20 / UIScreen.main.scale)
                        .cornerRadius(10)
                    Color.gray.frame(height: 20 / UIScreen.main.scale)
                        .cornerRadius(10)
                    Color("TextColor").frame(height: 20 / UIScreen.main.scale)
                        .cornerRadius(10)
                }
            }
            .padding(.horizontal, 35)
            
            Spacer()
            
            // Button to navigate to the next page
            Button(action: {
                if currentPage <= totalPages {
                    currentPage += 1
                } else {
                    currentPage = 1
                }
            }, label: {
                // Adjusting the button appearance based on the current page
                if currentPage == 3 {
                    Text("Next")
                        .fontWeight(.semibold)
                        .font(.system(size: 50))
                        .frame(width: 220, height: 40)
                        .padding()
                        .foregroundColor(Color("TextColor"))
                        .background(Color("ButtonColor"))
                        .cornerRadius(40)
                        .padding()
                        .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
                } else {
                    Text("Next")
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
            })
        }
    }
}
