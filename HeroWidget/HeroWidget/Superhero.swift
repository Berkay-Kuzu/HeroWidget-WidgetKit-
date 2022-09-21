//
//  Superhero.swift
//  HeroWidget
//
//  Created by Berkay Kuzu on 21.09.2022.
//

import Foundation

struct Superhero : Identifiable, Codable {
    
    //Identifiable yazarak SwiftUI'da for each içerisinde table view gibi gösterebiliriz.
    // Codable = Decodable & Encodable
    // Json encoding ile bunu encode edip veriye çevireceğiz.
    // Json decoding ile decode edip veriden geri superhero formatına çevireceğiz.
    
    let image : String
    let name : String
    let realName : String
    
    var id : String {image} // Codable olan her struct'ın bir id'ye ihtiyacı vardır. {image} yazarak id'leri image ile eşleştirdik ve tek tek id'lerle uğraşmadık.
}

let ironman = Superhero(image: "ironman", name: "Iron Man", realName: "Tony Stark")
let wolverine = Superhero(image: "wolverine", name: "Wolverine", realName: "Logan")
let spiderman = Superhero(image: "spiderman", name: "Spider Man", realName: "Peter Parker")
let thor = Superhero(image: "thor", name: "Thor", realName: "Thor")


