//
//  ViewController.swift
//  Trivia Rock Ultime
//
//  Created by Olivier Caron on 2019-03-25.
//  Copyright © 2019 Olivier Caron. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // variables
    @IBOutlet weak var bouttonQuizTrivia: UIButton!
    @IBOutlet weak var titreNiveau: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        titreNiveau.text = "Niveau 1 : \n Les grands hits du rock"
    }// fin de viewDidLoad


}// fin de ViewController


