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
    @IBOutlet weak var imgMain: UIImageView!
    @IBOutlet weak var lblDescription: UILabel!
    @IBOutlet weak var lblType: UILabel!
    @IBOutlet weak var lblDefence: UILabel!
    @IBOutlet weak var lblHeight: UILabel!
    @IBOutlet weak var lblPokedexID: UILabel!
    @IBOutlet weak var lblWeight: UILabel!
    @IBOutlet weak var lblBaseAttack: UILabel!
    @IBOutlet weak var imgCurrentEvo: UIImageView!
    @IBOutlet weak var imgNextEvo: UIImageView!
    @IBOutlet weak var lblEvo: UILabel!

    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblName.text = pokemon.name

    }

    @IBAction func btnBackPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }

}
