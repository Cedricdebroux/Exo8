//
//  ViewController.swift
//  Exo8
//
//  Created by Cédric Debroux on 19/08/2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var mTableView: UITableView!
    var pokemonTypes: [PokemonElement]=[PokemonElement]()
    
    private func setupDatas(){
        var firePokemons = [Pokemon]()
        firePokemons.append(Pokemon(name: "Salameche",  imageName:UIImage( named: "500px-Salamèche-RFVF")))
        firePokemons.append(Pokemon(name: "Poussifeu", imageName: UIImage(named: "500px-Poussifeu-ROSA")))
        firePokemons.append(Pokemon(name: "Dracaufeu", imageName: UIImage(named: "500px-Dracaufeu-RFVF")))
        
        var waterPokemons = [Pokemon]()
        waterPokemons.append(Pokemon(name: "Magicarpe", imageName: UIImage(named: "500px-Magicarpe-RFVF")))
        waterPokemons.append(Pokemon(name: "Otaquin", imageName: UIImage(named: "500px-Otaquin-USUL")))
        
        var icePokemon = [Pokemon]()
        icePokemon.append(Pokemon(name: "Dragmara", imageName: UIImage(named: "500px-Dragmara-XY")))
        icePokemon.append(Pokemon(name: "Blizzeval", imageName: UIImage(named: "500px-Blizzeval-EB")))
        
        var stellPokemon = [Pokemon]()
        stellPokemon.append(Pokemon(name: "Fermite", imageName: UIImage(named: "500px-Fermite-NB")))
        stellPokemon.append(Pokemon(name: "Galekid", imageName: UIImage(named: "500px-Galekid-RS")))
        stellPokemon.append(Pokemon(name: "Scalpion", imageName: UIImage(named: "500px-Scalpion-NB")))
        
        
        pokemonTypes.append(PokemonElement(element: .fire, listPokemon: firePokemons, color: .green))
        pokemonTypes.append(PokemonElement(element: .water, listPokemon: waterPokemons, color: .blue))
        pokemonTypes.append(PokemonElement(element: .ice, listPokemon: icePokemon, color: .yellow))
        pokemonTypes.append(PokemonElement(element: .stell, listPokemon: stellPokemon, color: .red))
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        mTableView.register(UINib(nibName: PokemonTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: PokemonTableViewCell.identifier)
        mTableView.register(UINib(nibName: CustomTitleViewController.identifierLabel, bundle: nil), forHeaderFooterViewReuseIdentifier: CustomTitleViewController.identifierLabel)
        mTableView.dataSource = self
        mTableView.delegate = self
        setupDatas()
    }
}
extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let pokemonHeader = tableView.dequeueReusableHeaderFooterView(withIdentifier: CustomTitleViewController.identifierLabel) as! CustomTitleViewController
        let pokemonTitle = pokemonTypes[section]
        pokemonHeader.setupTitle(pokemonElement: pokemonTitle)
        
        return pokemonHeader
    }

    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }

    
    func numberOfSections(in tableView: UITableView) -> Int {
        return pokemonTypes.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        pokemonTypes[section].listPokemon.count
    }
    
   /* func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        pokemonTypes[section].element.rawValue
    }*/
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let pokemonCell = tableView.dequeueReusableCell(withIdentifier: PokemonTableViewCell.identifier, for: indexPath) as! PokemonTableViewCell
        
        let pokemon = pokemonTypes[indexPath.section].listPokemon[indexPath.row]
        pokemonCell.setupCell(pokemon: pokemon)
        
        return pokemonCell
    }
    
}

