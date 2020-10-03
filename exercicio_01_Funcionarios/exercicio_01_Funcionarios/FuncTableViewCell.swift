//
//  FuncTableViewCell.swift
//  exercicio_01_Funcionarios
//
//  Created by Grazi Berti on 02/10/20.
//

import UIKit

class FuncTableViewCell: UITableViewCell {

    @IBOutlet weak var labelNome: UILabel!
    @IBOutlet weak var labelCargo: UILabel!
    @IBOutlet weak var labelEmail: UILabel!
    
    @IBOutlet weak var imagemView: UIImageView!
    
    func setup(funcionario: Funcionario) {
        labelNome.text = funcionario.nome
        labelCargo.text = funcionario.cargo
        labelEmail.text = funcionario.email
        imageView?.image = UIImage(named: funcionario.imagem)
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
