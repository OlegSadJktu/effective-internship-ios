//
//  HeroCell.swift
//  effective-internship
//
//  Created by user225687 on 12/13/22.
//

import UIKit

class HeroCell: UICollectionViewCell {

    @IBOutlet weak var namedCell: UILabel!
    
    @IBOutlet weak var heroCell: UILabel!
    
    func heroConfigure (with heroName: String) {
        heroCell.text = heroName
    }
    
    func configure (with heroName: String)  {
        namedCell.text = heroName	
    }
}
