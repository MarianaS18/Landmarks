//
//  LandmarkRowView.swift
//  Landmarks
//
//  Created by Mariana Steblii on 14/04/2021.
//

import SwiftUI

struct LandmarkRowView: View {
    let landmark: LandmarkModel
    
    var body: some View {
        
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
            
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        } //: HSTACK
        
    }
    
}

struct LandmarkRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkRowView(landmark: DataModel().landmarks[0])
            LandmarkRowView(landmark: DataModel().landmarks[1])
        }
        .previewLayout(.sizeThatFits)
    }
}
