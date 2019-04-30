//
//  CustomTabBarController.swift
//  ww
//
//  Created by Andriy Tsymbalyuk on 4/30/19.
//  Copyright © 2019 Andriy Tsymbalyuk. All rights reserved.
//

import UIKit
import SwipeableTabBarController

class CustomTabBarController: SwipeableTabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        swipeAnimatedTransitioning?.animationType = SwipeAnimationType.sideBySide
    }
}
