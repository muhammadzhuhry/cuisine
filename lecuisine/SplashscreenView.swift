//
//  SplashscreenView.swift
//  lecuisine
//
//  Created by Muhammad Zhuhry on 27/07/22.
//

import SwiftUI

struct SplashscreenView: View {
    var body: some View {
        ZStack {
            Image("splashscreen")
                .resizable()
                .renderingMode(.original)
                .ignoresSafeArea()
            
            VStack {
                VStack {
                    Image("logo")
                        .resizable()
                        .frame(width: 80, height: 80)
                    
                    Text("100K+ Premium Recipe")
                        .font(.title3)
                        .foregroundColor(Color.white)
                        .padding(.top)
                }.padding(.bottom, 200)
                
                Text("Get \nCooking")
                    .font(.largeTitle)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 5)
                
                Text("Simple way to find Tasty Recipe")
                    .font(.body)
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
            }
        }
    }
}

struct SplashscreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashscreenView()
    }
}
