//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Mariana Steblii on 11/04/2021.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var dataModel = DataModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(dataModel)
        }
    }
}
