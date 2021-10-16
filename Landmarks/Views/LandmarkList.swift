//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Agata Porwit on 10/14/21.
//

import Foundation
import SwiftUI


struct LandmarkList: View {
    var body: some View {
        NavigationView {
            List (landmarks) { landmark in
                NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previewes: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone 12 Pro Max"], id: \.self) { deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
