//
//  CarDetailViewController.swift
//  exercicio_03_Car
//
//  Created by Grazi Berti on 04/10/20.
//

import UIKit

class CarDetailViewController: UIViewController {

    @IBOutlet weak var imageViewCar: UIImageView!
    var profileImage: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        
    }
    func setup(){
        imageViewCar.image = UIImage(named: profileImage!)
    }
   
}
