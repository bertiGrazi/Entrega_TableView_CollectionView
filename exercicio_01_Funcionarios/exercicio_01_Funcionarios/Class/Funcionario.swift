//
//  Funcionario.swift
//  exercicio_01_Funcionarios
//
//  Created by Grazi Berti on 02/10/20.
//

import Foundation

class Funcionario {
    var nome: String
    var cargo: String
    var email: String
    var imagem: String
    
    init(nome: String, cargo: String, email: String, imagem: String) {
        self.nome = nome
        self.cargo = cargo
        self.email = email
        self.imagem = imagem
    }
}
