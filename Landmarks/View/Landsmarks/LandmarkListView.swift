//
//  LandmarkListView.swift
//  Landmarks
//
//  Created by Mariana Steblii on 18/04/2021.
//

import SwiftUI

struct LandmarkListView: View {
    @EnvironmentObject var dataModel: DataModel
    @State private var showFavoriteOnly = false
    
    var filteredLandmarks: [LandmarkModel] {
        dataModel.landmarks.filter { landmark in
            (!showFavoriteOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        
        NavigationView {
            List {
                Toggle(isOn: $showFavoriteOnly, label: {
                    Text("Favorits only")
                })
                
                ForEach(filteredLandmarks) { item in
                    NavigationLink(
                        destination: DetailView(landmark: item)) {
                            LandmarkRowView(landmark: item)
                        }
                } //: LOOP
            } //: LIST
            .navigationTitle("Landmarks")
        } //: NAVIGATION
        
    }
}

struct LandmarkListView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkListView()
            .environmentObject(DataModel())
    }
}
