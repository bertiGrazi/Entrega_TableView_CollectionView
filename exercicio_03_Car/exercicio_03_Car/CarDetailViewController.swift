//
//  CarDetailViewController.swift
//  exercicio_03_Car
//
//  Created by Grazi Berti on 04/10/20.
//

import UIKit

class CarDetailViewController: UIViewController {

    @IBOutlet weak var imageViewCar: UIImageView!
    var carro: Cars?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        self.title = carro?.name
        
    }
    func setup(){
        if let carro = carro{
            imageViewCar.image = UIImage(named: carro.profileImage)
        }
        
    }
   
}
