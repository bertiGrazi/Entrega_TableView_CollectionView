//
//  CarCollectionViewCell.swift
//  exercicio_03_Car
//
//  Created by Grazi Berti on 03/10/20.
//

import UIKit

class CarCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var imagemView: UIImageView!
    
    func setup(car: Cars) {
        labelName.text = car.name
        imagemView.image = UIImage(named: car.profileImage)
    }
}
