//
//  ChoixNiveauTableViewCell.swift
//  Trivia Rock Ultime
//
//  Created by Olivier Caron on 2019-05-28.
//  Copyright © 2019 Olivier Caron. All rights reserved.
//

import UIKit

class ChoixNiveauTableViewCell: UITableViewCell {
    
    //variables
    @IBOutlet weak var iconeNiveauImageView: UIImageView!
    @IBOutlet weak var numeroDeNiveauLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
