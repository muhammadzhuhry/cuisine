//
//  lecuisineApp.swift
//  lecuisine
//
//  Created by Muhammad Zhuhry on 18/07/22.
//

import SwiftUI

@main
struct lecuisineApp: App {
    @State var isActive = false
    var body: some Scene {
        WindowGroup {
            
            // splashscreen will appear for the first time after that, RootView will be called
            if isActive {
                RootView()
            } else {
                SplashscreenView()
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                            withAnimation {
                                self.isActive = true
                            }
                        }
                    }
            }
        }
    }
}
