//
//  ChoixNiveauViewController.swift
//  Trivia Rock Ultime
//
//  Created by Olivier Caron on 2019-05-28.
//  Copyright © 2019 Olivier Caron. All rights reserved.
//

import UIKit

class ChoixNiveauViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //variables
    @IBOutlet weak var niveauTableView: UITableView!
    
    var numeroDeNiveau = 0
    var niveauChoisi = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //on met le viewController comme delegate et source des données
        niveauTableView.delegate = self
        niveauTableView.dataSource = self
        
        //on donne les valeurs par défaut au variables
        numeroDeNiveau = 0
        
        //on enrigistre les cellules sur mesure
        niveauTableView.register(UINib(nibName: "ChoixNiveauTableViewCell", bundle: nil), forCellReuseIdentifier: "niveauCell")
        
        // Do any additional setup after loading the view.
    }//fin de viewDidLoad
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }//fin de numberOfRowsInSection
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        numeroDeNiveau += 1
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "niveauCell", for: indexPath) as! ChoixNiveauTableViewCell
        cell.numeroDeNiveauLabel.text = "\(numeroDeNiveau)"
        
        return cell
        
    }//fin de cellForRowAt
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("on a clique sur une cellule")
        niveauChoisi = indexPath.row
        performSegue(withIdentifier: "allerAuChoixDeQuiz", sender: self)
    }//fin de didSelectRowAt

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "allerAuChoixDeQuiz" {
            let destinationVC = segue.destination as! ChoizQuizViewController
            destinationVC.numeroDeQuiz = niveauChoisi
            //numeroDeNiveau = 0
            
        }
    }//fin de prepareForSegue
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}//fin de ChoixViewController
