//
//  ChansonViewController.swift
//  Trivia Rock Ultime
//
//  Created by Olivier Caron on 2019-04-24.
//  Copyright © 2019 Olivier Caron. All rights reserved.
//

import UIKit
import AVFoundation

class ChansonViewController: UIViewController, AVAudioPlayerDelegate {
    
    //elements UI
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIView!
    @IBOutlet weak var reponseB1: UIButton!
    @IBOutlet weak var reponseB2: UIButton!
    @IBOutlet weak var reponseB3: UIButton!
    @IBOutlet weak var reponseB4: UIButton!
    @IBOutlet weak var progressLabel: UILabel!
    
    //variables
    var player : AVPlayer?
    let toutesLesQuestions = ChansonBanqueDeQuestion()
    var numeroDeQuestion : Int = 0
    var caseBonneReponse : UIButton!
    var boutonsPossibles : [UIButton]!
    var reponseChoisie : Int = 0
    var caseChoisie : UIButton!
    var questionsReusis : Int = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // on initialise les boutons possibles
        boutonsPossibles = [reponseB1, reponseB2, reponseB3, reponseB4]

        // Do any additional setup after loading the view.
        prochaineChanson()
        
    }// fin de viewDidLoad
    
    @IBAction func reponsePressed(_ sender: UIButton) {
        switch sender.tag {
        case 1 :
            print("bouton a clique")
            reponseChoisie = 1
            caseChoisie = reponseB1
        case 2 :
            print("bouton B clique")
            reponseChoisie = 2
            caseChoisie = reponseB2
        case 3 :
            print("bouton c clique")
            reponseChoisie = 3
            caseChoisie = reponseB3
        case 4 :
            print("bouton d clique")
            reponseChoisie = 4
            caseChoisie = reponseB4
        default :
            print("bug on ne devrait pas activer la clause default")
            reponseChoisie = 0
        }// fin du switch
        verifieReponse()
        numeroDeQuestion += 1
        prochaineChanson()
    }// fin de reponsePressed
    
    
    func prochaineChanson() {
        DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(650)) {
            if self.numeroDeQuestion <= 9 {
                self.player?.cancelPendingPrerolls()
                self.jouerSon(urlDeChanson: self.toutesLesQuestions.questionsGrandsHits[self.numeroDeQuestion].questionMedia)
                self.questionLabel.text = "Qui/quel est l'artiste/titre de la chanson jouant présentement"
                self.reponseB1.setTitle(self.toutesLesQuestions.questionsGrandsHits[self.numeroDeQuestion].reponse1, for: .normal)
                self.reponseB2.setTitle(self.toutesLesQuestions.questionsGrandsHits[self.numeroDeQuestion].reponse2, for: .normal)
                self.reponseB3.setTitle(self.toutesLesQuestions.questionsGrandsHits[self.numeroDeQuestion].reponse3, for: .normal)
                self.reponseB4.setTitle(self.toutesLesQuestions.questionsGrandsHits[self.numeroDeQuestion].reponse4, for: .normal)
                
                // on reactive les boutons afin que l'utilisateur puisse continuer le quiz
                self.reponseB1.isEnabled = true
                self.reponseB2.isEnabled = true
                self.reponseB3.isEnabled = true
                self.reponseB4.isEnabled = true
                // on mets a jour les interfaces utilisateurs
                self.miseAJourUI()
            } else {
                print("quiz fini")
                print("Score final est de: \(self.questionsReusis) questions reusis")
                self.player?.pause()
                
                let alert = UIAlertController(title: "Fécilitations", message: "Vous avez completer le quiz! Vous avez réusis: \(self.questionsReusis)/10 questions", preferredStyle: .alert)
                let retourAuMenu = UIAlertAction(title: "Retourner au menu ?", style: .default, handler: { (UIAlertAction) in
                    self.dismiss(animated: true, completion: nil)
                })// fin du closure
                alert.addAction(retourAuMenu)
                self.present(alert, animated: true, completion: nil)
            }// fin du if/else
            
        }// fin du dispatch Queue
    }// fin de prochaineChanson
    
    // fonction qui mets a jour l'interface visuelle
    func miseAJourUI() {
        // on mets a jour la barre de progrès
        progressBar.frame.size.width = (view.frame.size.width / 10) * CGFloat(numeroDeQuestion + 1)
        progressLabel.text = "\(numeroDeQuestion + 1) / 10"
        
        // on retourne les boutons a leur couleur normale
        if let caseBackground = caseChoisie {
            caseBackground.backgroundColor = .init(red: 0.878, green: 0.704, blue: 0.197, alpha: 1)
            caseBonneReponse.backgroundColor = .init(red: 0.878, green: 0.704, blue: 0.197, alpha: 1)
        }// fin du if let
    }// end of miseAJourUI
    
    //fonction qui verifie si l'utilisateur a choisi la bonne reponse
    func verifieReponse() {
        let bonneReponse = toutesLesQuestions.questionsGrandsHits[numeroDeQuestion].reponse
        caseBonneReponse = boutonsPossibles[bonneReponse - 1]
        
        if bonneReponse == reponseChoisie {
            print("Bonne reponse")
            questionsReusis += 1
            
            // on change la couleur des cellules
            caseChoisie.backgroundColor = .init(red: 0.267, green: 0.741, blue: 0.196, alpha: 1)
            questionLabel.text = "Bonne reponse"
            
            // on deactive les bouton afin que l'utilisateur  ne puisse continuer le quiz pendant le délais
            reponseB1.isEnabled = false
            reponseB2.isEnabled = false
            reponseB3.isEnabled = false
            reponseB4.isEnabled = false
        } else {
            print("mauvaise reponse")
            caseChoisie.backgroundColor = .init(red: 0.761, green: 0.212, blue: 0.086, alpha: 1)
            caseBonneReponse.backgroundColor = .init(red: 0.267, green: 0.741, blue: 0.196, alpha: 1)
            questionLabel.text = "Mauvaise Reponse"
            
            // on deactive les bouton afin que l'utilisateur  ne puisse continuer le quiz pendant le délais
            reponseB1.isEnabled = false
            reponseB2.isEnabled = false
            reponseB3.isEnabled = false
            reponseB4.isEnabled = false
        }// fin du if/else
        
    }// fin de verifieReponse
    
    
    func jouerSon(urlDeChanson : String) {
        guard let url = URL.init(string: urlDeChanson)
            else {
                return
        }
        let playerItem = AVPlayerItem.init(url: url)
        player = AVPlayer.init(playerItem: playerItem)
        player?.play()
        
    }// fin de jouer son

    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}// find de ChansonViewController
