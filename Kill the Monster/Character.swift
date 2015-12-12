//
//  Character.swift
//  Kill the Monster
//
//  Created by Bartłomiej Dietl on 12/12/15.
//  Copyright © 2015 Bartłomiej Dietl. All rights reserved.
//

import Foundation

class Character {
    private var _health: Int = 100
    private var _attackPower: Int = 10
    
    var attackPower: Int {
        get {
            return _attackPower
        }
    }
    
    var health: Int {
        get {
            return _health
        }
    }
    
    init(startingHealth: Int, attackPower: Int) {
        self._health = startingHealth
        self._attackPower = attackPower
    }
    
}