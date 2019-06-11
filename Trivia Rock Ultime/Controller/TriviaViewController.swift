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
    @IBOutlet weak var titreDuNiveauLabel: UILabel!
    
    // variables
    var allQuestions = QuestionBank().quizs
    var reponseChoisie : Int = 0
    var numeroDeQuestion : Int = 0
    var caseChoisie : UIButton!
    var caseBonneReponse : UIButton!
    var questionsReusis : Int = 0
    var boutonsPossibles : [UIButton]!
    var timer : Timer?
    var timerRunCount = 0
    var reponseEntree : Bool = false
    var numeroDeQuiz = 0
    var titreDuNiveau = ""
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // on initialise les boutons possibles
        boutonsPossibles = [reponseB1, reponseB2, reponseB3, reponseB4]
        
        // on remet la valeur par default
        timerRunCount = 0
        
        //on affiche le titre du niveau
        titreDuNiveauLabel.text = titreDuNiveau
        // Do any additional setup after loading the view.
        prochaineQuestion()
    }// fin de viewDidLoad

    @IBAction func reponsePressed(_ sender: UIButton) {
        reponseEntree = true
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
//        numeroDeQuestion += 1
//        prochaineQuestion()
    }// fin reponsePressed
    
    
    @IBAction func quitterPressed(_ sender: UIButton) {
        let alert = UIAlertController(title: "Quiter le quiz", message: "Êtes vous sur de vouloir quiter le quiz? Tout progrès va être perdu", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Oui", style: .default, handler: { (UIAlertAction) in
            //on quite le quiz
            self.questionsReusis = 0
            self.numeroDeQuestion = 0
            self.dismiss(animated: true, completion: nil)
        }))//fin du closure
        alert.addAction(UIAlertAction(title: "Anuller", style: .cancel, handler: nil))
        present(alert, animated: true, completion: nil)
    }//fin de quitterPressed
    
    
    func verifieReponse() {
        print("on est dans verifie reponse")
        //let bonneReponse = allQuestions.list[numeroDeQuestion].reponse
        let bonneReponse = allQuestions[numeroDeQuiz][numeroDeQuestion].reponse
        caseBonneReponse = boutonsPossibles[bonneReponse - 1]
        if bonneReponse == reponseChoisie {
            questionsReusis += 1
            print("Bonne reponse")
            // on change la cellule de la bonne réponse / la cellule cliqué a vert
            caseChoisie.backgroundColor = .init(red: 0.267, green: 0.741, blue: 0.196, alpha: 1)
            questionLabel.text = "Bonne réponse"
            // on deactive les boutons afin que l'utilisateur ne puisse pas continuer le quiz pendant le delais
            reponseB1.isEnabled = false
            reponseB2.isEnabled = false
            reponseB3.isEnabled = false
            reponseB4.isEnabled = false
        } else if reponseChoisie == 0 {
            
            //on change tout les boutons en rouge et celui de la la bonne reponse
            reponseB1.backgroundColor = .init(red: 0.761, green: 0.212, blue: 0.086, alpha: 1)
            reponseB2.backgroundColor = .init(red: 0.761, green: 0.212, blue: 0.086, alpha: 1)
            reponseB3.backgroundColor = .init(red: 0.761, green: 0.212, blue: 0.086, alpha: 1)
            reponseB4.backgroundColor = .init(red: 0.761, green: 0.212, blue: 0.086, alpha: 1)
            caseBonneReponse.backgroundColor = .init(red: 0.267, green: 0.741, blue: 0.196, alpha: 1)
            
            questionLabel.text = "Mauvaise réponse vous n'avez pas répondu a la question a temps"
            
            // on deactive les boutons afin que l'utilisateur ne puisse pas continuer le quiz pendant le delais
            reponseB1.isEnabled = false
            reponseB2.isEnabled = false
            reponseB3.isEnabled = false
            reponseB4.isEnabled = false
        } else {
            print("Mauvaise reponse")
            // on change la cellule cliqué a rouge
            caseChoisie.backgroundColor = .init(red: 0.761, green: 0.212, blue: 0.086, alpha: 1)
            caseBonneReponse.backgroundColor = .init(red: 0.267, green: 0.741, blue: 0.196, alpha: 1)
            questionLabel.text = "Mauvaise réponse"
            // on deactive les boutons afin que l'utilisateur ne puisse pas continuer le quiz pendant le delais
            reponseB1.isEnabled = false
            reponseB2.isEnabled = false
            reponseB3.isEnabled = false
            reponseB4.isEnabled = false
        }//fin du if/else
        numeroDeQuestion += 1
        prochaineQuestion()
    }// fin de verifieReponse
    
    // fonction qui load les questions
    func prochaineQuestion(){
        print("on est a prochaineQuestion")
        // lorsque le delais est fini le code dans les parenthaises weird est execute
        DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(650)) {
            if self.numeroDeQuestion <= 9 {
                // on remet la couleur normale des boutons
//                self.questionLabel.text = self.allQuestions.list[self.numeroDeQuestion].questionMedia
//                self.reponseB1.setTitle(self.allQuestions.list[self.numeroDeQuestion].reponse1, for: .normal)
//                self.reponseB2.setTitle(self.allQuestions.list[self.numeroDeQuestion].reponse2, for: .normal)
//                self.reponseB3.setTitle(self.allQuestions.list[self.numeroDeQuestion].reponse3, for: .normal)
//                self.reponseB4.setTitle(self.allQuestions.list[self.numeroDeQuestion].reponse4, for: .normal)
                
                self.questionLabel.text = self.allQuestions[self.numeroDeQuiz][self.numeroDeQuestion].questionMedia
                self.reponseB1.setTitle(self.allQuestions[self.numeroDeQuiz][self.numeroDeQuestion].reponse1, for: .normal)
                self.reponseB2.setTitle(self.allQuestions[self.numeroDeQuiz][self.numeroDeQuestion].reponse2, for: .normal)
                self.reponseB3.setTitle(self.allQuestions[self.numeroDeQuiz][self.numeroDeQuestion].reponse3, for: .normal)
                self.reponseB4.setTitle(self.allQuestions[self.numeroDeQuiz][self.numeroDeQuestion].reponse4, for: .normal)
                // on reactive les boutons afin que l'utilisateur puisse continuer le quiz
                self.reponseB1.isEnabled = true
                self.reponseB2.isEnabled = true
                self.reponseB3.isEnabled = true
                self.reponseB4.isEnabled = true
                // on met a jour les interfaces utilisateur
                self.miseAJourUI()
                
//                if self.timer == nil {
//                    self.timer?.tolerance = 0.1
//                    print("prochaine qestions() --> timer parti")
//                    self.timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true, block: { timer in
//                        print(timer.fireDate.description)
//                        print("timer parti")
//                        print("temps timer : \(self.timerRunCount)")
//                        self.timerRunCount += 1
//
//                        if self.reponseEntree == true {
//                            timer.invalidate()
//                            self.timerRunCount = 0
//                            print("on arrete le timer (utilisateur a repondu)")
//                        }
//
//                        if self.timerRunCount == 5 {
//                            timer.invalidate()
//                            self.timerRunCount = 0
//                            print("on arrete le timer (manque de temps)")
//                            //self.questionLabel.text = "temps ecouler"
//                            //self.popUpFinQuiz(titre: "Temps écouler", message: "Le temps aloué pour complété cette question est écoulé")
//                            self.reponseChoisie = 0
//                            self.verifieReponse()
//                        }// fin du if
//                    })//fin du closure
//                }//fin du if
                
                
                self.reponseEntree = false
            } else {
                print("Quiz fini")
                self.popUpFinQuiz(titre: "Félicitations", message: "Vous avez complété le quiz! Vous avez réussi: \(self.questionsReusis)/10 questions!")
//                let alert = UIAlertController(title: "Félicitations!", message: "Vous avez complété le quiz! Vous avez réussi: \(self.questionsReusis)/10 questions!", preferredStyle: .alert)
//                let retourAuMenu = UIAlertAction(title: "Retourner au Menu?", style: .default, handler: { (UIAlertAction) in
//                    // code vers segue qui nous rapporte au menu
//                    self.dismiss(animated: true, completion: nil)
//                })
//                alert.addAction(retourAuMenu)
//                self.present(alert,animated: true, completion: nil)
            }// fin du else if
        }//fin de dispatQueue asyncAfter
    }// fin de prochaineQuestion
    
    func miseAJourUI(){
        // on met a jour la barre de progrès
        progressBar.frame.size.width = (view.frame.size.width / 10) * CGFloat(numeroDeQuestion + 1)
        progressLabel.text = "\(numeroDeQuestion + 1) / 10"
        
        // on retourne les cellules a leur couleur normale et avec le if let la ligne est seulement executer si la valeur de caseChoisie n'est pas nil
//        if let caseBackground = caseChoisie {
//        caseBackground.backgroundColor = .init(red: 0.878, green: 0.704, blue: 0.197, alpha: 1)
//        caseBonneReponse.backgroundColor = .init(red: 0.878, green: 0.704, blue: 0.197, alpha: 1)
//        }// fin du if let
        reponseB1.backgroundColor = .init(red: 0.878, green: 0.704, blue: 0.197, alpha: 1)
        reponseB2.backgroundColor = .init(red: 0.878, green: 0.704, blue: 0.197, alpha: 1)
        reponseB3.backgroundColor = .init(red: 0.878, green: 0.704, blue: 0.197, alpha: 1)
        reponseB4.backgroundColor = .init(red: 0.878, green: 0.704, blue: 0.197, alpha: 1)
        
    }// fin de miseAJourUI
    
    func popUpFinQuiz(titre : String, message : String) {
        let alert = UIAlertController(title: titre, message: message, preferredStyle: .alert)
        let retourAuMenu = UIAlertAction(title: "Retourner au Menu?", style: .default, handler: { (UIAlertAction) in
            // code vers segue qui nous rapporte au menu
            self.dismiss(animated: true, completion: nil)
        })
        alert.addAction(retourAuMenu)
        self.present(alert,animated: true, completion: nil)
    }// fin de popUpFinQuiz
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    
//    let timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
//        print("timer Fired")
//    }
//

}// fin de TriviaViewController
