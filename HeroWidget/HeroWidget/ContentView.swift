//
//  ContentView.swift
//  HeroWidget
//
//  Created by Berkay Kuzu on 21.09.2022.
//

import SwiftUI
import WidgetKit

let superHeroArray = [spiderman, ironman, thor, wolverine]

struct ContentView: View {
    
    @AppStorage("hero", store: UserDefaults(suiteName: "group.com.berkaykuzu.HeroWidget")) // Bu bir property wrapper, bir değişken ile oluştrumamız lazım.
    
    var heroData : Data = Data()
    
    var body: some View {
        VStack{
            ForEach(superHeroArray) { hero in
                HeroView(hero: hero).onTapGesture {
                    saveToDefaults(hero: hero)
                }
            }
        }
    }
    
    func saveToDefaults(hero: Superhero) {
       //print(hero.name)
        
        if let heroData =  try? JSONEncoder().encode(hero) {
            self.heroData = heroData
            print(hero.name)
            WidgetCenter.shared.reloadTimelines(ofKind: "WidgetHero") // Data'yı kaydettikten sonra Widget'in kendisine bir değişiklik yaptığımızı haber verebiliyoruz.
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
