//
//  ContentView.swift
//  lecuisine
//
//  Created by Muhammad Zhuhry on 18/07/22.
//

import SwiftUI

struct RootView: View {
    var body: some View {
        TabView {
            Home()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            
            About()
                .tabItem {
                    Image(systemName: "person.circle")
                    Text("About")
                }
        }
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
