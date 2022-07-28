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
