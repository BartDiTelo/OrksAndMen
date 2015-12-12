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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onPlayerButtonPressed(sender: AnyObject) {
    }

    @IBAction func onEnemyButtonPressed(sender: AnyObject) {
    }
}

