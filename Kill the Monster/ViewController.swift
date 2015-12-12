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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        infoLbl.text = "Tap a button to start another game!"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onPlayerButtonPressed(sender: AnyObject) {
    }

    @IBAction func onEnemyButtonPressed(sender: AnyObject) {
    }
    
    @IBAction func onStartPressed(sender: AnyObject) {
        hideShowOnStart()
    }
    
    func hideShowOnStart () {
        enemy.hidden = false
        player.hidden = false
        startButton.hidden = true
        startLbl.hidden = true
        playerAtkLbl.hidden = false
        enemyAtkLbl.hidden = false
        infoLbl.text = "Tap attack to strike!"
    }
}

