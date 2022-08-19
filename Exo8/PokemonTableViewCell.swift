//
//  PokemonTableViewCell.swift
//  Exo8
//
//  Created by Cédric Debroux on 19/08/2022.
//

import UIKit

class PokemonTableViewCell: UITableViewCell {

    static let identifier = "PokemonTableViewCell"
    
    @IBOutlet weak var pokeImage: UIImageView!
    
    @IBOutlet weak var pokeName: UILabel!
    
    func setupCell(pokemon: Pokemon){
        pokeImage.image = pokemon.imageName
        pokeName.text = pokemon.name
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
