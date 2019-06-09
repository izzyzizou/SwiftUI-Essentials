//
//  ContentView.swift
//  Landmark
//
//  Created by Izzat Abdujabbarov on 6/5/19.
//  Copyright © 2019 Izzat Abdujabbarov. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var landmark: Landmark
    var body: some View {
        VStack {
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300)
            
            CircleImage(image: landmark.image(forSize: 250))
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Turtle Rock").font(.title)
                
                HStack (alignment: .top) {
                    Text(landmark.park).font(.subheadline)
                    Spacer()
                    Text(landmark.state).font(.subheadline)
                }
            }.padding()
            Spacer()
        }.navigationBarTitle(Text(landmark.name), displayMode: .inline)
    }
}


struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView(landmark: landmarkData[0])
    }
}

