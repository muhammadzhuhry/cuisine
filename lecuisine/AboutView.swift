//
//  AboutView.swift
//  lecuisine
//
//  Created by Muhammad Zhuhry on 24/07/22.
//

import SwiftUI

struct About: View {
    var body: some View {
        VStack {
            Image("profile")
                .resizable()
                .frame(width: 250, height: 250)
                .cornerRadius(300)
            
            Text("Muhammad Athallah Zhuhry")
                .font(.headline)
                .padding(.bottom, 10.0)
            Text("Software Engineer")
                .font(.body)
                .padding(.bottom, 10.0)
            
            HStack {
                Image(systemName: "envelope")
                
                Text("project@inquary.com")
            }.font(.subheadline)
            Spacer()
            VStack {
                Text("Le Cuisine")
                    .font(.largeTitle)
                    .fontWeight(.medium)
                    .foregroundColor(Color("primary"))
                Text("v1.0.0")
                    .font(.callout)
            }.padding(.bottom, 35.0).foregroundColor(Color.gray)
        }
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        About()
    }
}
