//
//  HeroView.swift
//  HeroWidget
//
//  Created by Berkay Kuzu on 21.09.2022.
//

import SwiftUI

struct HeroView: View {
    
    let hero: Superhero // hero, Superhero objesi oldu.
    
    var body: some View {
        
        HStack {
            
            CircularImageView(image: Image(hero.image))
                .frame(width: 150, height: 150 ,alignment: .center)
                .padding()
            
            Spacer()
            
            VStack{
                Text(hero.name).font(.largeTitle).fontWeight(.bold).foregroundColor(.orange)
                Text(hero.realName).fontWeight(.bold)
            }.padding()
            
            Spacer()
            
        }.frame(width: UIScreen.main.bounds.width, alignment: .center) // Güncel ekran ne kadarsa HStack o kadar genişlikte olsun!
    }
}

struct HeroView_Previews: PreviewProvider {
    static var previews: some View {
        HeroView(hero: ironman)
    }
}
