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
    
    var numeroDeQuiz = 0
    let titreDuNiveau = ["Niveau 1: \n Les grands hits du rock", "Niveau 2: \n Francophonie 101", "Niveau 3: \n Queen"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //titreNiveau.text = "Niveau 1 : \n Les grands hits du rock"
        titreNiveau.text = titreDuNiveau[numeroDeQuiz]
    }// fin de viewDidLoad
    
    @IBAction func triviaPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "allerAQuizTrivia", sender: self)
    }// fin de trivia pressed
    
    @IBAction func chansonPressed(_ sender: UIButton) {
        //set up segue
        performSegue(withIdentifier: "allerAChansonTrivia", sender: self)
    }//fin de chansonPressed
    
    @IBAction func quitterPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
        
    }//fin de quitterPressed
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "allerAQuizTrivia"{
         //  code a faire avant le segue
            let destinationVC = segue.destination as! TriviaViewController
            destinationVC.numeroDeQuiz = numeroDeQuiz
            destinationVC.titreDuNiveau = titreDuNiveau[numeroDeQuiz]
        }
        
        if segue.identifier == "allerAChansonTrivia"{
            // code a faire avant le segue
            let destinationVC = segue.destination as! ChansonViewController
            destinationVC.numeroDeQuiz = numeroDeQuiz
            destinationVC.titreDuNiveau = titreDuNiveau[numeroDeQuiz]
            
        }//fin du if
    }// fin de prepare for segue
}// fin de ViewController


