//
//  ChansonBanqueDeQuestion.swift
//  Trivia Rock Ultime
//
//  Created by Olivier Caron on 2019-05-06.
//  Copyright © 2019 Olivier Caron. All rights reserved.
//

import Foundation

class ChansonBanqueDeQuestion {
    var questionsGrandsHits = [Question]()
    var questionsGrandesReprises = [Question]()
    
    init() {
        // another one bites the dust
        questionsGrandsHits.append(Question(media: "https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview118/v4/42/75/9a/42759a57-57c5-7d17-6f20-a77f2d03d7bf/mzaf_7191788861513477591.plus.aac.p.m4a", reponseA: "We Will Rock You", reponseB: "Welcome to My Nightmare", reponseC: "Under Pressure", reponseD: "Another One Bites the Dust", bonneReponse: 4))
        
        // back in black
        questionsGrandsHits.append(Question(media: "https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/Music/v4/e0/72/aa/e072aa95-f758-cf8c-7daf-ef18d8ad4d30/mzaf_8159877069630457907.plus.aac.p.m4a", reponseA: "AC/DC", reponseB: "Airborne", reponseC: "Guns N' Roses", reponseD: "Van Halen", bonneReponse: 1))
        
        // bobépine
        questionsGrandsHits.append(Question(media: "https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/Music2/v4/b9/1c/6b/b91c6b60-ca42-470b-098f-6bb47f4552d7/mzaf_7918292933848295254.plus.aac.p.m4a", reponseA: "Bobépine", reponseB: "La rue Principale", reponseC: "J't'aime comme un fou", reponseD: "Dégénérations", bonneReponse: 1))
        
        //Don't Stop Believing
        questionsGrandsHits.append(Question(media: "https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/Music/4e/41/49/mzm.yeaznezs.aac.p.m4a", reponseA: "Journey", reponseB: "Queen", reponseC: "Foreigner", reponseD: "Boston", bonneReponse: 1))
        
        //Come Together
        questionsGrandsHits.append(Question(media: "https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview71/v4/2e/6a/05/2e6a0568-ebd2-f6e7-b0cc-6dd271b03814/mzaf_3248962292768039999.plus.aac.p.m4a", reponseA: "Hey Jude", reponseB: "I Want to Hold Your Hand", reponseC: "Here Comes the Sun", reponseD: "Come Together", bonneReponse: 4))
        //Another Brick In the Wall, Pt. 2
        questionsGrandsHits.append(Question(media: "https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/Music7/v4/c3/11/ae/c311aef0-be7b-35de-193a-b55629d2cb14/mzaf_538320974834743269.plus.aac.p.m4a", reponseA: "Another Brick In the Wall, Pt. 2", reponseB: "Money", reponseC: "Confortably Numb", reponseD: "School's Out", bonneReponse: 1))
        // sweet emotion
        questionsGrandsHits.append(Question(media: "https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/Music/v4/54/ab/cf/54abcf6e-74a1-2177-b1a3-16a62a78008e/mzaf_8388431734923550725.plus.aac.p.m4a", reponseA: "Kiss", reponseB: "Def Leppard", reponseC: "Aerosmith", reponseD: "Eagles", bonneReponse: 3))
        
        // welcome to the jungle
        questionsGrandsHits.append(Question(media: "https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview118/v4/12/c3/d4/12c3d4aa-2e9f-8f68-e7eb-97e2556394a6/mzaf_9047806414524610372.plus.aac.p.m4a", reponseA: "Paradise City", reponseB: "Highway to Hell", reponseC: "Welcome to the Jungle", reponseD: "Sweet Child o' Mine", bonneReponse: 3))
        
        // hotel california
        questionsGrandsHits.append(Question(media: "https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview118/v4/36/eb/a4/36eba463-f796-85d8-e7e1-45438a8e4b21/mzaf_4267346359888736063.plus.aac.p.m4a", reponseA: "Take it Easy", reponseB: "Goodbye to Romance", reponseC: "Hotel California", reponseD: "Dream On", bonneReponse: 3))
        
        // crazy train
        questionsGrandsHits.append(Question(media: "https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview128/v4/8f/8a/86/8f8a8660-14a9-5a99-1ccd-46485e0f5a5d/mzaf_834521631064555099.plus.aac.p.m4a", reponseA: "Mr Crowley", reponseB: "Crazy Train", reponseC: "Iron Man", reponseD: "Paranoid", bonneReponse: 2))
        // knockin' on heaven's door
        questionsGrandesReprises.append(Question(media: "https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview125/v4/85/83/46/85834663-4b0e-4233-73e7-11aca01841b7/mzaf_4375692168737999276.plus.aac.p.m4a", reponseA: "Patience", reponseB: "Knockin' on Heaven's Door", reponseC: "Live and Let Die", reponseD: "November Rain", bonneReponse: 2))
        
        
        
        
        
    }// fin de l'initialiation des questions
    
    
    
}// fin de ChansonBanqueDeQuestion
