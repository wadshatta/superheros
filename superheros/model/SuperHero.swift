//
//  SuperHero.swift
//  superheros
//
//  Created by MacBook Pro on 25/05/2022.
//

import SwiftUI
import Foundation

struct SuperHero : Identifiable{
    var id = UUID()
    var title : String
    var image : String
    var message : String
    let gradientColors : [Color]
}

let superheroData : [SuperHero] = [

    SuperHero(title: "Hulk",
              image: "hulk",
              message: "Hulk is very green",
              gradientColors:[Color("ColorHulk01"), Color("ColorHulk02")]),

    SuperHero(title: "Ironman",
              image: "ironman",
              message: "Ironman can fly",
              gradientColors: [Color("ColorIronman01"),Color("ColorIronman02")]),

    SuperHero(title: "Spiderman",
              image: "spiderman",
              message: "Spiderman is not a real spider",
              gradientColors: [Color("ColorSpiderman01"),Color("ColorSpiderman02")]),

    SuperHero(title: "Superman",
              image: "superman",
              message: "Superman is from another planet",
              gradientColors: [Color("ColorSuperman01"),Color("ColoerSuperman02")]),

    SuperHero(title: "Wolverine",
              image: "wolverine",
              message: "Wolverine has knives in his hand",
              gradientColors: [Color("ColorWolverine01"),Color("ColorWolverine02")])
    
]
