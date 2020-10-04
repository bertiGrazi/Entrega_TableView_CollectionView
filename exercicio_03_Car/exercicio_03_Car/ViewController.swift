//
//  ViewController.swift
//  exercicio_03_Car
//
//  Created by Grazi Berti on 03/10/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colletionViewCar: UICollectionView!
    
    var arrayCars = [Cars] ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colletionViewCar.delegate = self
        colletionViewCar.dataSource = self
       
        
        arrayCars.append(Cars(name: "Fusca", profileImage: "1.jpg"))
        arrayCars.append(Cars(name: "kombi", profileImage: "2.jpg"))
        arrayCars.append(Cars(name: "Uno", profileImage: "3.png"))
        arrayCars.append(Cars(name: "Palio", profileImage: "4.jpg"))
        arrayCars.append(Cars(name: "Toró", profileImage: "5.png"))
        arrayCars.append(Cars(name: "Jeep", profileImage: "6.png"))
        arrayCars.append(Cars(name: "Gol", profileImage: "7.png"))
        arrayCars.append(Cars(name: "Sandero", profileImage: "8.png"))
        arrayCars.append(Cars(name: "Onix", profileImage: "9.jpeg"))
        arrayCars.append(Cars(name: "Audi", profileImage: "10.png"))

        colletionViewCar.reloadData()
        
    }
}

extension ViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let carName = arrayCars[indexPath.row]
        print("Selecionou: \(carName)")
        
        if let viewDetail = UIStoryboard(name: "CarDetail", bundle: nil).instantiateInitialViewController() as? CarDetailViewController {
            viewDetail.profileImage = arrayCars[indexPath.row].profileImage
            navigationController?.pushViewController(viewDetail, animated: true)
        }
    }
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayCars.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CarCollectionViewCell", for: indexPath) as! CarCollectionViewCell
        
        cell.setup(car: arrayCars[indexPath.row])
        
        return cell
    }
}
