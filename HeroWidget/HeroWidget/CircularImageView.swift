//
//  CircularImageView.swift
//  HeroWidget
//
//  Created by Berkay Kuzu on 21.09.2022.
//

import SwiftUI

struct CircularImageView: View {
    
    var image: Image
    
    var body: some View {
        image.resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.orange, lineWidth: 5))
            .shadow(radius: 15)
    }
}

struct CircularImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircularImageView(image: Image("ironman"))
    }
}
