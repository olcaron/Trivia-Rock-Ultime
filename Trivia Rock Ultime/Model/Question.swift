//
//  Question.swift
//  Trivia Rock Ultime
//
//  Created by Olivier Caron on 2019-03-27.
//  Copyright © 2019 Olivier Caron. All rights reserved.
//

import Foundation

class Question {
    
    let questionMedia : String
    let reponse1 : String
    let reponse2 : String
    let reponse3 : String
    let reponse4 : String
    let reponse : Int
    
    init(media : String, reponseA : String, reponseB : String, reponseC : String, reponseD : String, bonneReponse : Int) {
        questionMedia = media
        reponse1 = reponseA
        reponse2 = reponseB
        reponse3 = reponseC
        reponse4 = reponseD
        reponse = bonneReponse
    }// fin de l'initialissation
    
    
}  // fin de question
