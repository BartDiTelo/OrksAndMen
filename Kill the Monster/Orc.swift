//
//  Orc.swift
//  Kill the Monster
//
//  Created by Bartłomiej Dietl on 13/12/15.
//  Copyright © 2015 Bartłomiej Dietl. All rights reserved.
//

import Foundation

class Ork: Character {
    
    private var _name: String = "Ork"
    
    var name: String {
        get {
            return _name
        }
    }
    
    convenience init(name: String, health: Int, attackPower: Int) {
      
    self.init(startingHealth: health, attackPower: attackPower)
    }
    
}
