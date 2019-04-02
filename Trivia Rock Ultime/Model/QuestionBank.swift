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
        list.append(Question(text: "Quel est le nom du chanteur du groupe Queen?", reponseA: "Jon Bon Jovi", reponseB: "Ozzy Osbourne", reponseC: "Freddie Mercury", reponseD: "Bruce Dickinson", bonneReponse: 3))
        list.append(Question(text: "La chanson Wanted Dead or Alive de Bon Jovi provient de quel album?", reponseA: "Slippery When Wet", reponseB: "Lost Highway", reponseC: "New Jersey", reponseD: "7800° Fahrenheit", bonneReponse: 1))
        list.append(Question(text: "En 2012, Les Trois Accords ont fait paraitre un album promouvant l'amour envers un membre de la famille. Quel est le titre de cet album?", reponseA: "J'aime ta mère", reponseB: "J'aime ta tante", reponseC: "J'aime ta grand-mère", reponseD: "J'aime ta soeur", bonneReponse: 3))
        list.append(Question(text: "Quel est l'album rock le plus vendu de tous les temps?", reponseA: "Thriller", reponseB: "Dark Side of the Moon", reponseC: "Appetite for Destruction", reponseD: "Back in Black", bonneReponse: 4))
        list.append(Question(text: "Quelle reprise d'une chanson de Queen Céline Dion a-t-elle récemment interprétée?", reponseA: "We Are the Champions", reponseB: "The Show Must Go On", reponseC: "Bohemian Rhapsody", reponseD: "Under Pressure", bonneReponse: 2))
        list.append(Question(text: "Quel artiste est reconu pour son heavy metal?", reponseA: "Alice Cooper", reponseB: "Bon Jovi", reponseC: "Iron Maiden", reponseD: "Van Halen", bonneReponse: 3))
        list.append(Question(text: "Lesquels des artistes suivants ne portent pas de maquillage?", reponseA: "Kiss", reponseB: "Twisted Sisters", reponseC: "Alice Cooper", reponseD: "AC/DC", bonneReponse: 4))
        list.append(Question(text: "Quel artiste est considéré le roi du rock and roll?", reponseA: "Prince", reponseB: "Elvis Presley", reponseC: "Ozzy Osbourne", reponseD: "Michael Jackson", bonneReponse: 2))
        list.append(Question(text: "Slash est le guitariste de quel groupe rock?", reponseA: "Guns N' Roses", reponseB: "Black Sabbath", reponseC: "Santana", reponseD: "Poison", bonneReponse: 1))
        list.append(Question(text: "Dave Grohl le chanteur de Foo Fighters, provient originalement de quel groupe des années '90?", reponseA: "Pearl Jam", reponseB: "Sound Garden", reponseC: "Nickelback", reponseD: "Nirvana", bonneReponse: 4))
    }// fin de l'initialisation
    
    
}// fin de QuestionBank
