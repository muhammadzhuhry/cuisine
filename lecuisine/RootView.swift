//
//  ContentView.swift
//  lecuisine
//
//  Created by Muhammad Zhuhry on 18/07/22.
//

import SwiftUI

struct RootView: View {
    init() {
        UITabBar.appearance().isTranslucent = false
    }
    var body: some View {
        NavigationView {
            ZStack {
                TabView {
                    Home()
                        .tabItem {
                            Image(systemName: "house")
                            Text("Home")
                        }
                    
                    SavedRecipe()
                        .tabItem {
                            Image(systemName: "bookmark")
                            Text("Favorite")
                        }
                    
                    About()
                        .tabItem {
                            Image(systemName: "person.circle")
                            Text("About")
                        }
                }
                .navigationTitle("")
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarHidden(true)
            }
        }
        .accentColor(Color("primary"))
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
