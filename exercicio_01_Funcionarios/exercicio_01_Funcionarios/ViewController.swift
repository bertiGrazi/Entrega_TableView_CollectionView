//
//  ViewController.swift
//  exercicio_01_Funcionarios
//
//  Created by Grazi Berti on 02/10/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableViewFuncionarios: UITableView!
    
    var arrayFuncionarios = [Funcionario] ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewFuncionarios.delegate = self
        tableViewFuncionarios.dataSource = self
        
        arrayFuncionarios.append(Funcionario(nome: "Francisco", cargo: "Gerente", email: "francisco@email.com", imagem: "1.png"))
        arrayFuncionarios.append(Funcionario(nome: "José", cargo: "Professor", email: "jose@email.com", imagem: "2.png"))
        arrayFuncionarios.append(Funcionario(nome: "Erick", cargo: "Programador Junior", email: "erick@email.com", imagem: "3.png"))
        arrayFuncionarios.append(Funcionario(nome: "Henrique", cargo: "Advogado", email: "henrique@email.com", imagem: "4.png"))
        arrayFuncionarios.append(Funcionario(nome: "Sara", cargo: "Executiva", email: "sara@email.com", imagem: "5.jpeg"))
        arrayFuncionarios.append(Funcionario(nome: "Marcela", cargo: "Advogada", email: "marcela@email.com", imagem: "6.jpeg"))
        arrayFuncionarios.append(Funcionario(nome: "Isabela", cargo: "Professora de Inglês", email: "isabela@email.com", imagem: "8.jpg"))
        arrayFuncionarios.append(Funcionario(nome: "Eliana", cargo: "Economista", email: "eliana@email.com", imagem: "7.jpeg"))
        arrayFuncionarios.append(Funcionario(nome: "Karen", cargo: "Desing", email: "karen@email.com", imagem: "9.jpg"))
        arrayFuncionarios.append(Funcionario(nome: "Alex", cargo: "Médico Pediatra", email: "alex@email.com", imagem: "10.png"))
        arrayFuncionarios.append(Funcionario(nome: "Ítalo", cargo: "Mestre de Obra", email: "italo@email.com", imagem: "11.png"))
        arrayFuncionarios.append(Funcionario(nome: "Cristina", cargo: "Veterinária", email: "cristina@email.com", imagem: "12.png"))
        arrayFuncionarios.append(Funcionario(nome: "Alvoro", cargo: "Piloto", email: "alvoro@email.com", imagem: "13.png"))
        arrayFuncionarios.append(Funcionario(nome: "Andressa", cargo: "Comissária", email: "andressa@email.com", imagem: "14.png"))
        arrayFuncionarios.append(Funcionario(nome: "Pedro", cargo: "Analista De Sistemas", email: "pedro@email.com", imagem: "15.png"))
    }
}

extension ViewController: UITableViewDelegate {
    
}
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayFuncionarios.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FuncTableViewCell", for: indexPath) as! FuncTableViewCell
        cell.setup(funcionario: arrayFuncionarios[indexPath.row])
        
        return cell
    }
}
