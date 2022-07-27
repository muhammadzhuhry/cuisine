//
//  RecipeView.swift
//  lecuisine
//
//  Created by Muhammad Zhuhry on 25/07/22.
//

import SwiftUI

struct RecipeView: View {
    var detailRecipe: RecipeModel
    var body: some View {
        VStack {
            Image(detailRecipe.image)
                .resizable()
                .renderingMode(.original)
                .frame(width: 350, height: 250)
                .cornerRadius(20)
            //            Spacer()
            HStack {
                Text(detailRecipe.name)
                    .font(.title2)
                    .fontWeight(.medium)
                    .lineLimit(1)
                Spacer()
                Image(systemName: "heart.fill")
                    .foregroundColor(Color.red)
                    .font(.title2)
            }
            
            List() {
                Section(header: Text("Ingredients")
                            .fontWeight(.regular)) {
                    ForEach(detailRecipe.ingridient, id: \.self) { ingridient in
                        HStack {
                            Text(ingridient.name)
                                .lineLimit(1)
                            Spacer()
                            Text("x \(ingridient.quantity)")
                        }
                    }
                }.listRowSeparator(.hidden)
                
                Section(header: Text("Procedure")
                            .fontWeight(.regular)) {
                    ForEach((detailRecipe.steps), id: \.self) { step in
                        HStack {
                            Text("\u{2022} \(step)")
                                .font(.body)
                                .lineLimit(2)
                        }
                        
                    }
                    
                }
                            .listRowSeparator(.hidden)
                            .listRowBackground(Color(.systemGray6))
            }
            .cornerRadius(20)
            .listStyle(.sidebar)
        }.padding()
    }
}

struct RecipeView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeView(detailRecipe: RecipeData[0])
    }
}
