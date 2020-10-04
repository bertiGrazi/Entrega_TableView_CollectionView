//
//  FuncDetailViewController.swift
//  exercicio_01_Funcionarios
//
//  Created by Grazi Berti on 04/10/20.
//

import UIKit

class FuncDetailViewController: UIViewController {
    @IBOutlet weak var imagemViewFunc: UIImageView!
    
    @IBOutlet weak var labelName: UILabel!
    var nome: String?
    var imagem: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    func setup(){
        labelName.text = nome
        imagemViewFunc.image = UIImage(named: imagem!)
        
    }
    
    @IBAction func buttonActionClose(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
