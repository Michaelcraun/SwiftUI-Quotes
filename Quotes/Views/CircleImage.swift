//
//  CircleImage.swift
//  Quotes
//
//  Created by Michael Craun on 4/28/20.
//  Copyright © 2020 Craunic Productions. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("lilly")
        .resizable()
        .clipShape(Circle())
        .overlay(Circle()
            .stroke(Color.gray, lineWidth: 2))
        .shadow(radius: 10)
        .frame(width: 100, height: 100)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
