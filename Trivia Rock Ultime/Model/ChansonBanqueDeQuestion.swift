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
    var chansonsFranco = [Question]()
    var chansonsQueen = [Question]()
    var quizs = [[Question]()]
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
        
        chansonsFranco.append(Question(media: "https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/Music/23/6f/cc/mzm.qfhrkxcj.aac.p.m4a", reponseA: "La Stakose", reponseB: "Qui nous mène?", reponseC: "Dégénérations", reponseD: "Le Déni De L'évidence", bonneReponse: 4))//le déni de l'évidence
        chansonsFranco.append(Question(media: "https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview60/v4/9f/63/13/9f6313c1-6abd-157f-60fe-8695bef335e4/mzaf_852929740244440769.plus.aac.p.m4a", reponseA: "Hawaiienne", reponseB: "Dans mon corps", reponseC: "Tou nu sur la plage", reponseD: "Bamboula", bonneReponse: 2))//dans mon corps
        chansonsFranco.append(Question(media: "https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview118/v4/d8/34/c8/d834c82d-ca7a-9320-7a4f-c85aa4ce6a0c/mzaf_6342482197506786993.plus.aac.p.m4a", reponseA: "Philipe Branch", reponseB: "The Lost Fingers", reponseC: "Hubert Lenoir", reponseD: "Damien Robitaille", bonneReponse: 3))//fille de personne II
        chansonsFranco.append(Question(media: "https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/Music/v4/ff/9f/77/ff9f77b0-2cae-dfc0-0180-947d5831e720/mzaf_1480794826872321927.plus.aac.p.m4a", reponseA: "La dame en bleu", reponseB: "J'ai ta main", reponseC: "Sylvie", reponseD: "Un certain sourire", bonneReponse: 1))//La dame en bleu
        chansonsFranco.append(Question(media: "https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview118/v4/a0/52/25/a0522584-1ded-3371-564c-f41672b3feb8/mzaf_5355067367582348909.plus.aac.p.m4a", reponseA: "Kids United", reponseB: "Star académie 2012", reponseC: "rep", reponseD: "rep", bonneReponse: 2))//toi + moi
        chansonsFranco.append(Question(media: "https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview128/v4/ae/46/5a/ae465a95-40db-615c-9ae2-946dd5757ab0/mzaf_7055981486191317513.plus.aac.p.m4a", reponseA: "Ça va Mal", reponseB: "Y fait chaud", reponseC: "Kraft Dinner", reponseD: "Aujourd’hui ma vie c’est de la marde", bonneReponse: 4))//aujourd'hui ma vie c'est d'la marde
        chansonsFranco.append(Question(media: "https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/Music/d4/aa/5c/mzm.epyjuiho.aac.p.m4a", reponseA: "Les Colocs", reponseB: "Les Cowboys Fringants", reponseC: "Vilains Pingouin", reponseD: "Kevin Parent", bonneReponse: 1))//la rue principale
        chansonsFranco.append(Question(media: "https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview62/v4/6f/1e/ef/6f1eef6b-6af2-81b0-f242-b77cdf968d83/mzaf_1691158716562240214.plus.aac.p.m4a", reponseA: "Come ci, comme ça", reponseB: "Je Veux", reponseC: "On ira", reponseD: "Prend garde à ta langue", bonneReponse: 3))//on ira
        chansonsFranco.append(Question(media: "https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/Music/v4/50/2d/84/502d84bd-fe7f-fc17-22a3-f08f24edd3ed/mzaf_6572492138321572497.plus.aac.p.m4a", reponseA: "Céline Dion", reponseB: "Ginette Reno", reponseC: "Marie-Mai", reponseD: "Lynda Lemay", bonneReponse: 2))//fait moi la tendresse
        chansonsFranco.append(Question(media: "https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/Music6/v4/59/ef/84/59ef84ef-4446-0f38-6394-c61a978fdd1b/mzaf_3673231187984701566.plus.aac.p.m4a", reponseA: "Les étoiles Filantes", reponseB: "Histoire de pêche", reponseC: "La Catherine", reponseD: "Marine marchande", bonneReponse: 4))//marine marchande
        
        chansonsQueen.append(Question(media: "https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview128/v4/3a/97/92/3a979230-29d3-b3a9-71b1-2e618e2f557d/mzaf_8065199861915755366.plus.aac.p.m4a", reponseA: "One Vision", reponseB: "Inuendo", reponseC: "Tear It Up", reponseD: "I Want to Break Free", bonneReponse: 4))//I want to break Free
        chansonsQueen.append(Question(media: "https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview128/v4/41/37/b0/4137b058-811b-9980-deaa-e9dee1b0887c/mzaf_339275262896922385.plus.aac.p.m4a", reponseA: "Too Much Love Will Kill You", reponseB: "Love of my Life", reponseC: "Who Wants to Live Forever", reponseD: "Friends will be friends", bonneReponse: 3))//Who wants to live forever
        chansonsQueen.append(Question(media: "https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview118/v4/31/8d/78/318d7875-5928-ee88-bc9a-9afb7f8dbc71/mzaf_471065938770199476.plus.aac.p.m4a", reponseA: "I Want It All", reponseB: "Radio Ga Ga", reponseC: "Sheer Heart Attack", reponseD: "Don't Stop Me Now", bonneReponse: 2))//radio Ga Ga
        chansonsQueen.append(Question(media: "https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview118/v4/29/ff/bd/29ffbdb7-ac8c-bf45-a0ba-4587f5453798/mzaf_8254503318619741294.plus.aac.p.m4a", reponseA: "Let Me Live", reponseB: "Made In Heaven", reponseC: "I was Born to Love You", reponseD: "Killer Queen", bonneReponse: 1))//let me live
        chansonsQueen.append(Question(media: "https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview118/v4/74/0e/c6/740ec61b-1f40-6ac6-e889-ccfaad1bfdb5/mzaf_482068567507023292.plus.aac.p.m4a", reponseA: "Crazy Little Thing Called Love", reponseB: "I'm Going Slightly Mad", reponseC: "Bicycle Race", reponseD: "Fat Bottom Girls", bonneReponse: 4))//fat bottom girls
        chansonsQueen.append(Question(media: "https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview118/v4/22/f4/6d/22f46ddd-8ed6-fd16-fc1a-65bbd016aae5/mzaf_6679594149776576675.plus.aac.p.m4a", reponseA: "It's A Hard Life", reponseB: "Bohemian Rapsodhy", reponseC: "The Show Must Go On", reponseD: "Play the Game", bonneReponse: 3))//the show must go on
        chansonsQueen.append(Question(media: "https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview118/v4/b3/0e/4f/b30e4f77-77ae-e5f3-c878-98a9937ed20c/mzaf_7503656091558231422.plus.aac.p.m4a", reponseA: "The Miracle", reponseB: "Hammer to Fall", reponseC: "now i'm here", reponseD: "Sheer Heart Attack", bonneReponse: 2))//Hammer to fall
        chansonsQueen.append(Question(media: "https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview128/v4/df/cd/ac/dfcdac7a-1fa2-891e-6306-8ec4b94d14f1/mzaf_7617952883333542038.plus.aac.p.m4a", reponseA: "You're My Best Friend", reponseB: "Sweet Lady", reponseC: "These Are the Days of Our Lives", reponseD: "Love of my life", bonneReponse: 4))//love of my life
        chansonsQueen.append(Question(media: "https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview118/v4/37/e6/83/37e68399-14d6-4eec-c633-5fe944c9e712/mzaf_7882672577198688436.plus.aac.p.m4a", reponseA: "I'm In Love With My Car", reponseB: "Good Company", reponseC: "Dragon Attack", reponseD: "Seven Seas of Rhyne", bonneReponse: 1))//i'm in love with my car
        chansonsQueen.append(Question(media: "https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview128/v4/f5/d8/21/f5d82173-cf97-2e21-0df7-b6ddc2e349a5/mzaf_4399856112203047974.plus.aac.p.m4a", reponseA: "Under Pressure", reponseB: "Princes of the Universe", reponseC: "A Kind of Magic", reponseD: "Friends Will Be Friends", bonneReponse: 3))//a kind of magic
        
        quizs = [questionsGrandsHits, chansonsFranco, chansonsQueen]
    }// fin de l'initialiation des questions
}// fin de ChansonBanqueDeQuestion
