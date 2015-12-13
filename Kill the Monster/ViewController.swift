//
//  ViewController.swift
//  Kill the Monster
//
//  Created by Bartłomiej Dietl on 12/12/15.
//  Copyright © 2015 Bartłomiej Dietl. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var playerAtkLbl: UILabel!
    @IBOutlet weak var enemyAtkLbl: UILabel!
    @IBOutlet weak var infoLbl: UILabel!
    @IBOutlet weak var startLbl: UILabel!
    @IBOutlet weak var enemy: UIImageView!
    @IBOutlet weak var player: UIImageView!
    @IBOutlet weak var startButton: UIButton!
    
    var human: Human!
    var ork: Ork!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        infoLbl.text = "Tap a button to start another game!"
        
        human = Human(name: "Human", health: 80, attackPower: 10)
        
        ork = Ork(name: "Ork", health: 110, attackPower: 8)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onPlayerButtonPressed(sender: AnyObject) {
        
        ork.attemptAttack(human.attackPower)
        infoLbl.text = " \(human.name) attacked for \(human.attackPower). \(ork.name) HP is \(ork.health)"
        
        if !ork.isAlive {
            infoLbl.text = " \(human.name) killed \(ork.name)"
            restart()
        }
        
        
        
    }

    @IBAction func onEnemyButtonPressed(sender: AnyObject) {
        
        human.attemptAttack(ork.attackPower)
        infoLbl.text = " \(ork.name) attacked for \(ork.attackPower). \(human.name) HP is \(human.health)"
        
        if !human.isAlive {
            infoLbl.text = " \(ork.name) killed \(human.name)"
            restart()
            
        }
    }
    
    @IBAction func onStartPressed(sender: AnyObject) {
        hideShowOnStart()
    }
    
    func hideShowOnStart() {
        enemy.hidden = false
        player.hidden = false
        startButton.hidden = true
        startLbl.hidden = true
        playerAtkLbl.hidden = false
        enemyAtkLbl.hidden = false
        infoLbl.text = "Tap attack to strike!"
    }
    
    func restart() {
        enemy.hidden = true
        player.hidden = true
        startButton.hidden = false
        startLbl.hidden = false
        playerAtkLbl.hidden = true
        enemyAtkLbl.hidden = true
        
        human = Human(name: "Human", health: 80, attackPower: 10)
        
        ork = Ork(name: "Ork", health: 110, attackPower: 8)
    }
}

