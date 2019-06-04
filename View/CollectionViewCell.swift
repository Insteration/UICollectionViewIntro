//
//  CollectionViewCell.swift
//  UICollectionViewIntro
//
//  Created by Артём Кармазь on 6/3/19.
//  Copyright © 2019 Artem Karmaz. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    var menu: Menu? {
        didSet {
            label.text = menu?.name
            
            if let image = menu?.image {
                imageView.image = UIImage(named: image)
            }
        }
    }
}
