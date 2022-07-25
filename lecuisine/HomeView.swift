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

struct HomeContent: View {
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
                }.listRowSeparator(.hidden)
            }
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
