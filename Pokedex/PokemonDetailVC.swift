//
//  PokemonDetailVC.swift
//  Pokedex
//
//  Created by Settar Hummetli on 7/18/17.
//  Copyright © 2017 Settar Hummetli. All rights reserved.
//

import UIKit

class PokemonDetailVC: UIViewController {

    var pokemon: Pokemon!
    
    @IBOutlet weak var lblName: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblName.text = pokemon.name

    }


}
