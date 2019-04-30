//
//  ViewController.swift
//  ww
//
//  Created by Andriy Tsymbalyuk on 4/29/19.
//  Copyright © 2019 Andriy Tsymbalyuk. All rights reserved.
//

import UIKit
import SwipeableTabBarController
var cell = CustomTableViewCell()

class MainViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
   fileprivate let images:[UIImage] = [
        UIImage(named: "cardiogram")!,
        UIImage(named: "open-book")!,
        UIImage(named: "weightlifting")!,
        UIImage(named: "home")!,
        UIImage(named: "dollar-symbol")!,
]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName: "CustomTableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
}
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as? CustomTableViewCell else {return UITableViewCell()}
            
            cell.habbitLabel.text = "Habbit"
            cell.descriptionLabel.text = "description"
            cell.timeLabel.text = "10 min"
        return cell
    }
}


extension MainViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       return  5
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? CustomCollectionViewCell {
            cell.cellImage.image = images[indexPath.item].withRenderingMode(.alwaysTemplate)
            cell.tintColor = .gray
            return cell
        }
        return UICollectionViewCell()
    }

    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width / 5, height: collectionView.frame.height)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0.0
        
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath)
//        cell?.tintColor = .red
////        cell.backgroundColor = .yellow
       
        
        
    }
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath)
        cell?.tintColor = .blue
    }
    
    
}

