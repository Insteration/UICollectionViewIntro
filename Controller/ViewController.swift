//
//  ViewController.swift
//  UICollectionViewIntro
//
//  Created by Артём Кармазь on 6/3/19.
//  Copyright © 2019 Artem Karmaz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myCollectionView: UICollectionView!
    
    var itemMenuArray: [Menu] = {
        var blankMenu = Menu()
        var blankMenu2 = Menu()
        
        blankMenu.name = "Coca-cola"
        blankMenu.image = "cola"
        
        blankMenu2.name = "Coffe"
        blankMenu2.image = "coffe"
        
        return [blankMenu, blankMenu2]
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        myCollectionView.delegate = self
        myCollectionView.dataSource = self
        // Do any additional setup after loading the view.
    }
    

}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return itemMenuArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if let itemCell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as? CollectionViewCell {
            
            itemCell.menu = itemMenuArray[indexPath.row]
            
            return itemCell
        }
        
        return UICollectionViewCell()
    }
    
    
}
