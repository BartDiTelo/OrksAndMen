//
//  Human.swift
//  Kill the Monster
//
//  Created by Bartłomiej Dietl on 12/12/15.
//  Copyright © 2015 Bartłomiej Dietl. All rights reserved.
//

import Foundation

class Human: Character {
    private var _name = "Human"
    
    var name: String {
        get {
            return _name
        }
    }
    
    convenience init(name: String, health: Int, attackPower: Int) {
        
        self.init(startingHealth: health, attackPower: attackPower)
        
        _name = name
    }
}