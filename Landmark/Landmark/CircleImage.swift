//
//  CircleImage.swift
//  Landmark
//
//  Created by Izzat Abdujabbarov on 6/6/19.
//  Copyright © 2019 Izzat Abdujabbarov. All rights reserved.
//

import SwiftUI

struct CircleImage : View {
    var image: Image
    var body: some View {
        image.clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct CircleImage_Previews : PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}
