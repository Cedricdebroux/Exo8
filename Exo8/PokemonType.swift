//
//  Pokemon.swift
//  Exo8
//
//  Created by Cédric Debroux on 19/08/2022.
//

import Foundation
import UIKit

enum PokemonTypes:String {
    case fire = "Fire"
    case water = "Water"
    case ice = "Ice"
    case stell = "Stell"
}

struct PokemonElement{
    var element:PokemonTypes
    var listPokemon = [Pokemon]()
    var color: UIColor
}


