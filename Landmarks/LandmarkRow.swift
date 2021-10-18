//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Agata Porwit on 10/14/21.
//

import Foundation
import SwiftUI

import Foundation
import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
                .cornerRadius(5)
            Text(landmark.name)
            
            
            Spacer()
            
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .imageScale(.medium)
                    .foregroundColor(.green)
            }
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var landmarks = ModelData().landmarks
    
    static var previews: some View {
        Group{
            LandmarkRow(landmark: landmarks[0])
            LandmarkRow(landmark: landmarks[1])
            LandmarkRow(landmark: landmarks[2])
            
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
