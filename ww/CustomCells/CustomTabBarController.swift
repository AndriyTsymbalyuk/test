//
//  CustomTabBarController.swift
//  ww
//
//  Created by Andriy Tsymbalyuk on 4/30/19.
//  Copyright © 2019 Andriy Tsymbalyuk. All rights reserved.
//

import UIKit

class CustomTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let layout = UICollectionViewFlowLayout()
        let viewController = SecondVS()
        let navController = UINavigationController(rootViewController: viewController)
        navController.tabBarItem.title = "recent"
        
        viewControllers = [navController]

        
    }
    

    
}
