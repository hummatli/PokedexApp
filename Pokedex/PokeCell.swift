//
//  PokeCell.swift
//  Pokedex
//
//  Created by Settar Hummetli on 7/18/17.
//  Copyright © 2017 Settar Hummetli. All rights reserved.
//

import UIKit

class PokeCell: UICollectionViewCell {
    @IBOutlet weak var imgThumb: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    
    var pokemon: Pokemon!
    
    func configureCell(pokemon: Pokemon) {
        self.pokemon = pokemon
        lblName.text = pokemon.name.capitalized
        imgThumb.image = UIImage(named: "\(pokemon.pokedexId)")
        
    }
    
}
