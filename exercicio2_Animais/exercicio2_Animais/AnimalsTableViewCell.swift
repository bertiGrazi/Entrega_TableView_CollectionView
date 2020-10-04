//
//  AnimalsTableViewCell.swift
//  exercicio2_Animais
//
//  Created by Grazi Berti on 02/10/20.
//

import UIKit

class AnimalsTableViewCell: UITableViewCell {
    
    // MARK: IBOutlet
    
    @IBOutlet weak var imageViewAnimals: UIImageView!
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelBreed: UILabel!
    @IBOutlet weak var labelWeight: UILabel!
    @IBOutlet weak var labelSpecies: UILabel!
    func setup(animals: Animals) {
        labelName.text = animals.name
        labelBreed.text = animals.breed
        labelWeight.text = animals.weight
        labelSpecies.text = animals.species
        imageViewAnimals.image = UIImage(named: animals.image)
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

   
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
