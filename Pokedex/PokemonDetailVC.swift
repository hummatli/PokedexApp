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
    
        lblName.text = pokemon.name.capitalized
        
        let img = UIImage(named: "\(pokemon.pokedexId)")
        
        imgMain.image = img
        imgCurrentEvo.image = img
        
        lblPokedexID.text = "\(pokemon.pokedexId)"
        
        imgNextEvo.isHidden = true // I do it not to show default image on start
        
        pokemon.downloadPokemonDetails {
            //Do when download completer
            self.updateUI()
        }

    }
    
    func updateUI() {

        lblDescription.text = pokemon.description

        lblType.text = pokemon.type
        lblDefence.text = pokemon.defense
        lblHeight.text = pokemon.height
        lblWeight.text = pokemon.weight
        lblBaseAttack.text = pokemon.attack

        
        if pokemon.nextEvoId == "" {
            
            lblEvo.text = "No Evolutions"
            imgNextEvo.isHidden = true
            
        } else {
            
            imgNextEvo.isHidden = false
            imgNextEvo.image = UIImage(named: pokemon.nextEvoId)
            let str = "Next Evolution: \(pokemon.nextEvoName) - LVL \(pokemon.nextEvoLevel)"
            lblEvo.text = str
        
        }

    
    }

    @IBAction func btnBackPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }

}
