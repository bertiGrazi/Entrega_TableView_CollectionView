//
//  ViewController.swift
//  exercicio2_Animais
//
//  Created by Grazi Berti on 02/10/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableViewAnimals: UITableView!
    
    var arrayAnimals = [Animals] ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewAnimals.delegate = self
        tableViewAnimals.dataSource = self
        
        arrayAnimals.append(Animals(name: "Mel", breed: "Yorkshire", weight: "5 Kg", species: "Catioro", image: "1.png"))
        arrayAnimals.append(Animals(name: "Lili", breed: "Akita Inu", weight: "8 Kg", species: "Catioro", image: "2.jpg"))
        arrayAnimals.append(Animals(name: "Tuly", breed: "Catioro", weight: "9 Kg", species: "Catioro", image: "3.jpg"))
        arrayAnimals.append(Animals(name: "Chispita", breed: "Catioro", weight: "10 Kg", species: "Catioro", image: "4.jpg"))
        arrayAnimals.append(Animals(name: "Bebel", breed: "Salsicha", weight: "3 Kg", species: "Catioro", image: "5.png"))
        arrayAnimals.append(Animals(name: "Simba", breed: "Gatito", weight: "3 Kg", species: "Gatito", image: "g1.png"))
        arrayAnimals.append(Animals(name: "Nina", breed: "Gatito", weight: "2 Kg", species: "Gatito", image: "g2.png"))
        arrayAnimals.append(Animals(name: "Kiara", breed: "Gatito", weight: "5 Kg", species: "Gatito", image: "g3.png"))
        arrayAnimals.append(Animals(name: "Visconde", breed: "Gatito", weight: "4 Kg", species: "Gatito", image: "g4.jpeg"))
        arrayAnimals.append(Animals(name: "Jeronima", breed: "Gatito", weight: "7 Kg", species: "Gatito", image: "g5.png"))
    }
}

extension ViewController: UITableViewDelegate {
    
}
extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayAnimals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AnimalsTableViewCell", for: indexPath) as! AnimalsTableViewCell
        cell.setup(animals: arrayAnimals[indexPath.row])
        return cell
    }
}
