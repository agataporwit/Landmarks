//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Agata Porwit on 10/14/21.
//

import SwiftUI
//mainattribute identifies the app’s entry point.
@main
    struct LandmarksApp: App {
        @StateObject private var modelData = ModelData()
        
        
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
