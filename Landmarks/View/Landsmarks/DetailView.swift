//
//  DetailView.swift
//  Landmarks
//
//  Created by Mariana Steblii on 18/04/2021.
//

import SwiftUI

struct DetailView: View {
    @EnvironmentObject var dataModel: DataModel
    var landmark: LandmarkModel
    
    var landmarkIndex: Int {
        dataModel.landmarks.firstIndex(where: { $0.id == landmark.id })!
    }
    
    
    var body: some View {
        
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                HStack {
                    Text(landmark.name)
                        .font(.title)
                        .foregroundColor(.primary)
                    FavoriteButton(isSet: $dataModel.landmarks[landmarkIndex].isFavorite)
                }

                HStack {
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.state)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
                    .font(.subheadline)
            }
            .padding()
        } //: VSTACK
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

struct DetailView_Previews: PreviewProvider {
    static let dataModel = DataModel()
    
    static var previews: some View {
        DetailView(landmark: dataModel.landmarks[0])
            .environmentObject(dataModel)
    }
}
