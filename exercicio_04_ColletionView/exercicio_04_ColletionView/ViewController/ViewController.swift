//
//  ViewController.swift
//  exercicio_04_ColletionView
//
//  Created by Grazi Berti on 03/10/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var arrayNames = [Name]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.reloadData()
        
        arrayNames.append(Name(name: "Ana", profileImage: "1.jpg"))
        arrayNames.append(Name(name: "Karen", profileImage: "2.jpg"))
        arrayNames.append(Name(name: "Luciana", profileImage: "3.png"))
        arrayNames.append(Name(name: "João", profileImage: "4.png"))
        arrayNames.append(Name(name: "Priscila", profileImage: "5.png"))
        arrayNames.append(Name(name: "Felipe", profileImage: "6.png"))
        arrayNames.append(Name(name: "Luan", profileImage: "7.png"))
        arrayNames.append(Name(name: "Jeronima", profileImage: "1.jpg"))
        arrayNames.append(Name(name: "Gleice", profileImage: "2.jpg"))
        arrayNames.append(Name(name: "Lorena", profileImage: "3.png"))
        arrayNames.append(Name(name: "Peter", profileImage: "4.png"))
        arrayNames.append(Name(name: "Paula", profileImage: "5.png"))
        arrayNames.append(Name(name: "Matheus", profileImage: "6.png"))
        arrayNames.append(Name(name: "Leonardo", profileImage: "7.png"))
        arrayNames.append(Name(name: "Ana Maria", profileImage: "1.jpg"))
        arrayNames.append(Name(name: "Cicera", profileImage: "2.jpg"))
        arrayNames.append(Name(name: "Bárbara", profileImage: "3.png"))
        arrayNames.append(Name(name: "Joel", profileImage: "4.png"))
        arrayNames.append(Name(name: "Aline", profileImage: "5.png"))
        arrayNames.append(Name(name: "Jaime", profileImage: "6.png"))
    }
}

extension ViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        arrayNames.remove(at: indexPath.row)
        print(arrayNames)
        collectionView.reloadData()
    }
}

extension ViewController: UICollectionViewDataSource{
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayNames.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "NameCollectionViewCell", for: indexPath) as! NameCollectionViewCell
        cell.setup(name: arrayNames[indexPath.row])
        
        
        return cell
    }
}
