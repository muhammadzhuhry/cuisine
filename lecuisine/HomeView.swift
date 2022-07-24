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
    var body: some View {
        List() {
            HStack(alignment: .top) {
                Image("food-1")
                    .resizable()
                    .renderingMode(.original)
                    .frame(width: 80, height: 80)
                    .cornerRadius(20)
                
                VStack(alignment: .leading, spacing: 5.0) {
                    Text("Crock Pot Roast").font(.headline)
                    
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
                        Text("10:00 mins")
                    }
                    .font(.subheadline)
                    .foregroundColor(Color.gray)
                }
            }.listRowSeparator(.hidden)
            
            HStack(alignment: .top) {
                Image("food-2")
                    .resizable()
                    .renderingMode(.original)
                    .frame(width: 80, height: 80)
                    .cornerRadius(20)
                
                VStack(alignment: .leading, spacing: 5.0) {
                    Text("Roasted Asparagus").font(.headline)
                    
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
                        Text("10:00 mins")
                    }
                    .font(.subheadline)
                    .foregroundColor(Color.gray)
                }
            }.listRowSeparator(.hidden)
        }
        .listStyle(.plain)
    }
}
