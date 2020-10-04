//
//  AnimalsDetailViewController.swift
//  exercicio2_Animais
//
//  Created by Grazi Berti on 04/10/20.
//

import UIKit

class AnimalsDetailViewController: UIViewController {

    @IBOutlet weak var imageViewAnimals: UIImageView!
    @IBOutlet weak var labelName: UILabel!
    var name: String?
    var image: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    @IBAction func buttonClose(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    func setup() {
        labelName.text = name
        imageViewAnimals.image = UIImage(named: image!)
    }
   

}
