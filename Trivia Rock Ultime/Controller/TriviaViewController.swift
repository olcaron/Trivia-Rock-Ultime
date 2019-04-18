//
//  TriviaViewController.swift
//  Trivia Rock Ultime
//
//  Created by Olivier Caron on 2019-03-27.
//  Copyright © 2019 Olivier Caron. All rights reserved.
//

import UIKit

class TriviaViewController: UIViewController {
    
    // elements UI
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIView!
    @IBOutlet weak var reponseB1: UIButton!
    @IBOutlet weak var reponseB2: UIButton!
    @IBOutlet weak var reponseB3: UIButton!
    @IBOutlet weak var reponseB4: UIButton!
    @IBOutlet weak var progressLabel: UILabel!
    
    
    // variables
    let allQuestions = QuestionBank()
    var reponseChoisie : Int = 0
    var numeroDeQuestion : Int = 0
    var caseChoisie : UIButton!
    var caseBonneReponse : UIButton!
    var questionsReusis : Int = 0
    var boutonsPossibles : [UIButton]!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        boutonsPossibles = [reponseB1, reponseB2, reponseB3, reponseB4]

        // Do any additional setup after loading the view.
        prochaineQuestion()
    }// fin de viewDidLoad
    

    @IBAction func reponsePressed(_ sender: UIButton) {
        switch sender.tag {
        case 1 :
            reponseChoisie = 1
            caseChoisie = reponseB1
        // créer une variable ( String ) qui contient le nom de la variable de la case et lorsque on fait le switch on assigne la string avec le nom de la variable de case a une autre variable ex: caseChoisie = reponseB1 --> en faisant cela lorsque vérifie la réponse on est aussi capable de changer la couleur de la case
        case 2 :
            reponseChoisie = 2
            caseChoisie = reponseB2
        case 3 :
            reponseChoisie = 3
            caseChoisie = reponseB3
        case 4 :
            reponseChoisie = 4
            caseChoisie = reponseB4
        default : reponseChoisie = 0
        }// fin du switch
        verifieReponse()
        numeroDeQuestion += 1
        prochaineQuestion()
    }// fin reponsePressed
    
    
    func verifieReponse() {
        let bonneReponse = allQuestions.list[numeroDeQuestion].reponse
        caseBonneReponse = boutonsPossibles[bonneReponse - 1]
        if bonneReponse == reponseChoisie {
            questionsReusis += 1
            print("Bonne reponse")
            // on change la cellule de la bonne réponse / la cellule cliqué a vert
            caseChoisie.backgroundColor = .init(red: 0.267, green: 0.741, blue: 0.196, alpha: 1)
            questionLabel.text = "Bonne réponse"
            
        } else {
            print("Mauvaise reponse")
            // on change la cellule cliqué a rouge
            caseChoisie.backgroundColor = .init(red: 0.761, green: 0.212, blue: 0.086, alpha: 1)
            caseBonneReponse.backgroundColor = .init(red: 0.267, green: 0.741, blue: 0.196, alpha: 1)
            questionLabel.text = "Mauvaise réponse"
            
        }// fin du if else
    }// fin de verifieReponse
    
    // fonction qui load les questions
    func prochaineQuestion(){
        DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(750)) {
            if self.numeroDeQuestion <= 9 {
                self.questionLabel.text = self.allQuestions.list[self.numeroDeQuestion].questionText
                self.reponseB1.setTitle(self.allQuestions.list[self.numeroDeQuestion].reponse1, for: .normal)
                self.reponseB2.setTitle(self.allQuestions.list[self.numeroDeQuestion].reponse2, for: .normal)
                self.reponseB3.setTitle(self.allQuestions.list[self.numeroDeQuestion].reponse3, for: .normal)
                self.reponseB4.setTitle(self.allQuestions.list[self.numeroDeQuestion].reponse4, for: .normal)
                // on met a jour les interfaces utilisateur
                self.miseAJourUI()
            } else {
                print("Quiz fini")
                let alert = UIAlertController(title: "Félicitations!", message: "Vous avez complété le quiz! Vous avez réussi: \(self.questionsReusis)/10 questions!", preferredStyle: .alert)
                let retourAuMenu = UIAlertAction(title: "Retourner au Menu?", style: .default, handler: { (UIAlertAction) in
                    // code vers segue qui nous rapporte au menu
                    self.dismiss(animated: true, completion: nil)
                })
                alert.addAction(retourAuMenu)
                self.present(alert,animated: true, completion: nil)
                
            }// fin du else if
        }//fin de dispatQueue asyncAfter
    }// fin de prochaineQuestion
    
    func miseAJourUI(){
        // on met a jour la barre de progrès
        progressBar.frame.size.width = (view.frame.size.width / 10) * CGFloat(numeroDeQuestion + 1)
        progressLabel.text = "\(numeroDeQuestion + 1) / 10"
        
        // on retourne les cellules a leur couleur normale et avec le if let la ligne est seulement executer si la valeur de caseChoisie n'est pas nil
        if let caseBackground = caseChoisie {
        caseBackground.backgroundColor = .init(red: 0.878, green: 0.704, blue: 0.197, alpha: 1)
        caseBonneReponse.backgroundColor = .init(red: 0.878, green: 0.704, blue: 0.197, alpha: 1)
        }// fin du if let
        
    }// fin de miseAJourUI
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}// fin de TriviaViewController
