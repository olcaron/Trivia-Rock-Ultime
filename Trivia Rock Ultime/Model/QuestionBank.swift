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
    var questionsFranco = [Question]()
    var quizs = [[Question]()]
    
    init() {
        list.append(Question(media: "Quel est le nom du chanteur du groupe Queen?", reponseA: "Jon Bon Jovi", reponseB: "Ozzy Osbourne", reponseC: "Freddie Mercury", reponseD: "Bruce Dickinson", bonneReponse: 3))
        list.append(Question(media: "La chanson Wanted Dead or Alive de Bon Jovi provient de quel album?", reponseA: "Slippery When Wet", reponseB: "Lost Highway", reponseC: "New Jersey", reponseD: "7800° Fahrenheit", bonneReponse: 1))
        list.append(Question(media: "En 2012, Les Trois Accords ont fait paraitre un album promouvant l'amour envers un membre de la famille. Quel est le titre de cet album?", reponseA: "J'aime ta mère", reponseB: "J'aime ta tante", reponseC: "J'aime ta grand-mère", reponseD: "J'aime ta soeur", bonneReponse: 3))
        list.append(Question(media: "Quel est l'album rock le plus vendu de tous les temps?", reponseA: "Thriller", reponseB: "Dark Side of the Moon", reponseC: "Appetite for Destruction", reponseD: "Back in Black", bonneReponse: 4))
        list.append(Question(media: "Quelle reprise d'une chanson de Queen Céline Dion a-t-elle récemment interprétée?", reponseA: "We Are the Champions", reponseB: "The Show Must Go On", reponseC: "Bohemian Rhapsody", reponseD: "Under Pressure", bonneReponse: 2))
        list.append(Question(media: "Quel artiste est reconu pour son heavy metal?", reponseA: "Alice Cooper", reponseB: "Bon Jovi", reponseC: "Iron Maiden", reponseD: "Van Halen", bonneReponse: 3))
        list.append(Question(media: "Lesquels des artistes suivants ne portent pas de maquillage?", reponseA: "Kiss", reponseB: "Twisted Sisters", reponseC: "Alice Cooper", reponseD: "AC/DC", bonneReponse: 4))
        list.append(Question(media: "Quel artiste est considéré le roi du rock and roll?", reponseA: "Prince", reponseB: "Elvis Presley", reponseC: "Ozzy Osbourne", reponseD: "Michael Jackson", bonneReponse: 2))
        list.append(Question(media: "Slash est le guitariste de quel groupe rock?", reponseA: "Guns N' Roses", reponseB: "Black Sabbath", reponseC: "Santana", reponseD: "Poison", bonneReponse: 1))
        list.append(Question(media: "Dave Grohl le chanteur de Foo Fighters, provient originalement de quel groupe des années '90?", reponseA: "Pearl Jam", reponseB: "Sound Garden", reponseC: "Nickelback", reponseD: "Nirvana", bonneReponse: 4))
        
        questionsFranco.append(Question(media: "Je suis un groupe étant sourtout connu pour mes chansons parfois farfelus", reponseA: "Les Colocs", reponseB: "Damien Robitaille", reponseC: "Trois Accords", reponseD: "Zébulon", bonneReponse: 3))
        questionsFranco.append(Question(media: "Je suis un groupe de folklore Québecois, créé apprès l'insucès du référendum de 1995", reponseA: "1ere reponse", reponseB: "Mes Aïeux", reponseC: "2e reponse", reponseD: "Beau Dommage", bonneReponse: 2))
        questionsFranco.append(Question(media: "Qui sont les artistes du célèbre duo ayant performé \"Un peu plus haut, un peu plus loin\" lors du 400e aniversaire de Québec?", reponseA: "Céline Dion et Ginette Reno", reponseB: "une autre reponse", reponseC: "Céline Dion et une autre personne", reponseD: "Céline Dion et Éric Lapointe", bonneReponse: 1))
        questionsFranco.append(Question(media: "Qui est l'artiste ayant créé un album intitulé \"Darlène\" basé sur un roman du même titre?", reponseA: "Marie-Mai", reponseB: "qqn", reponseC: "Lisa Leblanc", reponseD: "Hubert Lenoir", bonneReponse: 4))
        questionsFranco.append(Question(media: "Christophe Maé est devenu fort poppulaire au Canada a l'aide de quelle chanson?", reponseA: "Il est où le bohneur", reponseB: "bonne reponse", reponseC: "On ira", reponseD: "Différents", bonneReponse: 1))
        questionsFranco.append(Question(media: "Quel est l'émission/ compétition de musique québecoise fort poppulaire, créé par Julie Schnider", reponseA: "La voix", reponseB: "une autre émission", reponseC: "Star Académie", reponseD: "Le mur", bonneReponse: 3))
        questionsFranco.append(Question(media: "Qui est l'artiste qui chante normalement l'hymne national Canadien, pour les Canadiens de Montréal", reponseA: "qqch", reponseB: "rep", reponseC: "rep", reponseD: "Ginette Reno", bonneReponse: 4))
        questionsFranco.append(Question(media: "Qui est l'immitatrice franco-ontarienne ayant été première partie pour Céline Dion?", reponseA: "Lynda Lemay", reponseB: "Véronique Dicaire", reponseC: "autre rep", reponseD: "autre rep", bonneReponse: 2))
        questionsFranco.append(Question(media: "Quel est le nom de la chanson des Cowboys Fringants qui parle de la pêche de Morue en Gaspésie?", reponseA: "Histoire de pêche", reponseB: "Marine marchande", reponseC: "Rue Des Souvenirs", reponseD: "La fonderie", bonneReponse: 1))
        questionsFranco.append(Question(media: "Quel elle la chanson qui a été le premier gros Hit de Marie-Mai (trouver meilleure question)", reponseA: "C.O.B.R.A.", reponseB: "Mentir", reponseC: "À bout portant", reponseD: "C'est Moi", bonneReponse: 4))
        
        quizs = [list, questionsFranco]
    }// fin de l'initialisation
}// fin de QuestionBank
