//
//  ViewController.swift
//  Trivia Rock Ultime
//
//  Created by Olivier Caron on 2019-03-25.
//  Copyright © 2019 Olivier Caron. All rights reserved.
//

import UIKit

class ChoizQuizViewController: UIViewController {
    
    // variables
    @IBOutlet weak var bouttonQuizTrivia: UIButton!
    @IBOutlet weak var titreNiveau: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        titreNiveau.text = "Niveau 1 : \n Les grands hits du rock"
    }// fin de viewDidLoad
    
    @IBAction func triviaPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "allerAQuizTrivia", sender: self)
    }// fin de trivia pressed
    
    @IBAction func chansonPressed(_ sender: UIButton) {
        //set up segue
        performSegue(withIdentifier: "allerAChansonTrivia", sender: self)
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "allerAQuizTrivia"{
         //  code a faire avant le segue
        }
        
        if segue.identifier == "allerAChansonTrivia"{
            // code a faire avant le segue
        }//fin du if
    }// fin de prepare for segue
}// fin de ViewController


