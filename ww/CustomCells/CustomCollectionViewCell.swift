//
//  CustomCollectionVIewCell.swift
//  ww
//
//  Created by Andriy Tsymbalyuk on 4/30/19.
//  Copyright © 2019 Andriy Tsymbalyuk. All rights reserved.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var cellImage: UIImageView!
    override var isHighlighted: Bool {
        didSet {
            cellImage.tintColor = isSelected ? UIColor.red : UIColor.gray
        }
    }
    

//    override var isSelected: Bool {
//        didSet {
//            cellImage.tintColor = isHighlighted ? UIColor.clear : UIColor.red
//            
//        }
//}
}

    


