//
//  ContentView.swift
//  Landmarks
//
//  Created by Mariana Steblii on 11/04/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkListView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(DataModel())
    }
}
