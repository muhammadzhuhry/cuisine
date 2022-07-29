//
//  HomeView.swift
//  lecuisine
//
//  Created by Muhammad Zhuhry on 24/07/22.
//

import SwiftUI

struct Home: View {
    init() {
        //                UITableView.appearance().backgroundColor = .clear
    }
    var body: some View {
        VStack(alignment: .leading) {
            Header()
                .padding(.leading)
            HomeContent(recipe: ResponseSample)
        }
    }
}

struct Header: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Hello John,").font(.headline)
            Text("What are you cooking today?").font(.caption)
        }
    }
}

struct SearchBar: View {
    @Binding var text: String
    @State private var isEditing = false
    
    var body: some View {
        HStack {
            TextField("Search recipe...", text: $text)
                .padding(10)
                .padding(.horizontal, 25)
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .overlay(
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(Color.gray)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 8)
                        
                        if isEditing {
                            Button(action: {
                                self.text = ""
                            }) {
                                Image(systemName: "multiply.circle.fill")
                                    .foregroundColor(Color.gray)
                                    .padding(.trailing, 8)
                            }
                        }
                    }
                )
                .onTapGesture {
                    self.isEditing = true
                }
            
            if isEditing {
                Button(action: {
                    self.isEditing = false
                    self.text = ""
                }){
                    Text("Cancel")
                }
                .padding(.trailing, 10)
                .transition(.move(edge: .trailing))
                //                .animation(.default)
            }
        }
    }
}

struct HomeContent: View {
    @State private var searchText: String = ""
    @State var recipe: Response
    
    var body: some View {
        SearchBar(text: $searchText)
            .padding(.leading)
            .padding(.trailing)
        List(results) { menu in
            NavigationLink(destination: RecipeView(detailRecipe: menu)) {
                HStack(alignment: .top) {
                    Image(menu.image)
                        .resizable()
                        .renderingMode(.original)
                        .frame(width: 80, height: 80)
                        .cornerRadius(20)
                    
                    VStack(alignment: .leading, spacing: 5.0) {
                        Text(menu.name).font(.headline)
                        
                        HStack {
                            Image(systemName: "heart.fill")
                                .foregroundColor(Color.pink)
                            Text("4.9")
                                .font(.subheadline)
                            Text("(150)")
                                .font(.subheadline)
                                .foregroundColor(Color.gray)
                        }
                        
                        HStack {
                            Image(systemName: "alarm").foregroundColor(Color.orange)
                            Text("\(menu.timers.reduce(0, +)) mins")
                        }
                        .font(.subheadline)
                        .foregroundColor(Color.gray)
                    }
                }
            }.listRowSeparator(.hidden)
        }
        .listStyle(.plain)
        .onAppear {
            APIRecipe().getRecipes { (recipes) in
                self.recipe = recipes
            }
        }
    }
    
    var results: [RecipeModel] {
        if searchText.isEmpty {
            return recipe.data
        } else {
            return recipe.data.filter { $0.name.contains(searchText) }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
