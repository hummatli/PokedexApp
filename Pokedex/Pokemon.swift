//
//  Pokemon.swift
//  Pokedex
//
//  Created by Settar Hummetli on 7/18/17.
//  Copyright © 2017 Settar Hummetli. All rights reserved.
//

import Foundation

class Pokemon {
    private var _name: String!
    private var _pokedexId: Int!
    
    var name: String {
        return _name
    }
    
    var pokedexId: Int {
        return _pokedexId
    }
    
    init(name: String, pokedexId: Int) {
        _name = name
        _pokedexId = pokedexId
    }
}
