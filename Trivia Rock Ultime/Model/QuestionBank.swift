//
//  QuestionBank.swift
//  Trivia Rock Ultime
//
//  Created by Olivier Caron on 2019-03-27.
//  Copyright © 2019 Olivier Caron. All rights reserved.
//

import Foundation

class QuestionBank {
    
    // on cree un array avec 10 questions
    var list = [Question]()
    
    init() {
        list.append(Question(text: "Quel est le nom du Chanteur du Groupe Queen ?", reponseA: "John bon Jovi", reponseB: "Ozzy Osbourne", reponseC: "Freddie Mercury", reponseD: "Bruce Dickinson", bonneReponse: 3))
        list.append(Question(text: "La chanson Wanted Dead or Alive de Bon Jovi provient de quel Album ?", reponseA: "Slipery When Wet", reponseB: "Lost Highway", reponseC: "New Jersey", reponseD: "Apetite for Destruction", bonneReponse: 1))
        list.append(Question(text: "Quel est l'album rock le plus vendu de tout les temps ?", reponseA: "Thriller", reponseB: "Dark Side of the Moon", reponseC: "Apetite for Destruction", reponseD: "Back in Black", bonneReponse: 4))
        list.append(Question(text: "Quel reprise d'une chanson de Queen est ce que Céline Dion a recemment fait?", reponseA: "We Are The Champions", reponseB: "The Show Must Go On", reponseC: "Bohemian Rapsodhy", reponseD: "Under Pressure", bonneReponse: 2))
        list.append(Question(text: "Quel artiste est reconu pour son heavy metal", reponseA: "Alice Cooper", reponseB: "Bon Jovi", reponseC: "Iron Maiden", reponseD: "Van Halen", bonneReponse: 3))
        list.append(Question(text: "Lesquel des artistes suivant ne portent pas de maquillage?", reponseA: "Kiss", reponseB: "Twisted Sisters", reponseC: "Alice Cooper", reponseD: "AC/DC", bonneReponse: 4))
    }// fin de l'initialisation
    
    
}// fin de QuestionBank
