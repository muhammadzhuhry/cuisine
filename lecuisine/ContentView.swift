//
//  ContentView.swift
//  lecuisine
//
//  Created by Muhammad Zhuhry on 18/07/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Header()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Header: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Hello John").font(.headline)
            Text("What are you cooking today?").font(.caption)
        }
    }
}
