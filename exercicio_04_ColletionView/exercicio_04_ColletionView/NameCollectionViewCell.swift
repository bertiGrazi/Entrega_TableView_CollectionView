//
//  NameCollectionViewCell.swift
//  exercicio_04_ColletionView
//
//  Created by Grazi Berti on 03/10/20.
//

import UIKit

class NameCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var labelName: UILabel!
    
    func setup(name: Name){
        labelName.text = name.name
        imageView.image = UIImage(named: name.profileImage)
    }
}

