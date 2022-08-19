//
//  CustomTitleViewController.swift
//  Exo8
//
//  Created by Cédric Debroux on 19/08/2022.
//

import UIKit

class CustomTitleViewController: UITableViewHeaderFooterView {
    
    static let identifierLabel = "CustomTitleViewController"
    
    @IBOutlet weak var backgroundColorV: UIView!
    @IBOutlet weak var PokeTypeLabel: UILabel!
    
    func setupTitle(pokemonElement: PokemonElement){
        PokeTypeLabel.text = pokemonElement.element.rawValue
        backgroundColorV.backgroundColor = pokemonElement.color
        PokeTypeLabel.textColor = .white
    }
        
}
