//
//  HomeView.swift
//  lecuisine
//
//  Created by Muhammad Zhuhry on 24/07/22.
//

import SwiftUI

struct Home: View {
    init() {
        //        UITableView.appearance().backgroundColor = .clear
    }
    var body: some View {
        VStack(alignment: .leading) {
            Header()
                .padding(.leading)
            SearchBar()
                .padding(.leading)
                .padding(.trailing)
            HomeContent()
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
    @State private var searchText: String = ""
    @State private var isEditing = false
    
    var body: some View {
        HStack {
            TextField("Search recipe...", text: $searchText)
                .padding(10)
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .onTapGesture {
                    self.isEditing = true
                }
            
            if isEditing {
                Button(action: {
                    self.isEditing = false
                    self.searchText = ""
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
    var menuList = RecipeData
    var body: some View {
        List(menuList) { menu in
            NavigationLink(destination: MenuView(menu: menu.name)) {
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
        }.listStyle(.plain)
    }
}

struct MenuView: View {
    var menu: String
    
    var body: some View {
        Text("Menu: \(menu)")
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
