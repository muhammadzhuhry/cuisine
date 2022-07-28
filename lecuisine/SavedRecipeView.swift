//
//  SavedRecipeView.swift
//  lecuisine
//
//  Created by Muhammad Zhuhry on 28/07/22.
//

import SwiftUI

struct SavedRecipe: View {
    var body: some View {
        VStack {
            ZStack {
                Image("saved-1")
                    .resizable()
                    .renderingMode(.original)
                    .frame(width: 315, height: 150)
                    .cornerRadius(20)
                
                HStack {
                    HStack {
                        Image(systemName: "star.fill")
                            .font(.caption)
                            .foregroundColor(Color.orange)
                        Text("4.0")
                            .font(.footnote)
                    }
                    .frame(width: 60, height: 30)
                    .background(.yellow)
                    .cornerRadius(20)
                    
                    Image(systemName: "bookmark.circle")
                        .font(.title)
                        .foregroundColor(Color("primary"))
                        .frame(width: 35, height: 35)
                        .background(Color.white)
                        .cornerRadius(100)
                }
                .padding(.leading, 185.0)
                .padding(.bottom, 100.0)
            }
            .frame(width: 315.0, height: 150.0)
            
            ZStack {
                Image("saved-2")
                    .resizable()
                    .renderingMode(.original)
                    .frame(width: 315, height: 150)
                    .cornerRadius(20)
                
                HStack {
                    HStack {
                        Image(systemName: "star.fill")
                            .font(.caption)
                            .foregroundColor(Color.orange)
                        Text("4.7")
                            .font(.footnote)
                    }
                    .frame(width: 60, height: 30)
                    .background(.yellow)
                    .cornerRadius(20)
                    
                    Image(systemName: "bookmark.circle")
                        .font(.title)
                        .foregroundColor(Color("primary"))
                        .frame(width: 35, height: 35)
                        .background(Color.white)
                        .cornerRadius(100)
                }
                .padding(.leading, 185.0)
                .padding(.bottom, 100.0)
            }
            .frame(width: 315.0, height: 150.0)
            
            ZStack {
                Image("saved-3")
                    .resizable()
                    .renderingMode(.original)
                    .frame(width: 315, height: 150)
                    .cornerRadius(20)
                
                HStack {
                    HStack {
                        Image(systemName: "star.fill")
                            .font(.caption)
                            .foregroundColor(Color.orange)
                        Text("4.2")
                            .font(.footnote)
                    }
                    .frame(width: 60, height: 30)
                    .background(.yellow)
                    .cornerRadius(20)
                    
                    Image(systemName: "bookmark.circle")
                        .font(.title)
                        .foregroundColor(Color("primary"))
                        .frame(width: 35, height: 35)
                        .background(Color.white)
                        .cornerRadius(100)
                }
                .padding(.leading, 185.0)
                .padding(.bottom, 100.0)
            }
            .frame(width: 315.0, height: 150.0)
            
            ZStack {
                Image("saved-4")
                    .resizable()
                    .renderingMode(.original)
                    .frame(width: 315, height: 150)
                    .cornerRadius(20)
                
                HStack {
                    HStack {
                        Image(systemName: "star.fill")
                            .font(.caption)
                            .foregroundColor(Color.orange)
                        Text("4.0")
                            .font(.footnote)
                    }
                    .frame(width: 60, height: 30)
                    .background(.yellow)
                    .cornerRadius(20)
                    
                    Image(systemName: "bookmark.circle")
                        .font(.title)
                        .foregroundColor(Color("primary"))
                        .frame(width: 35, height: 35)
                        .background(Color.white)
                        .cornerRadius(100)
                }
                .padding(.leading, 185.0)
                .padding(.bottom, 100.0)
            }
            .frame(width: 315.0, height: 150.0)
        }
    }
}

struct SavedRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        SavedRecipe()
    }
}
