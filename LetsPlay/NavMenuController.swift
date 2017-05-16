//
//  NavMenuController.swift
//  LetsPlay
//
//  Created by Admin on 16/05/2017.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

class NavMenuController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.viewControllers = [createNavControllers(thetitle: "Events", imageName: "Events"), createNavControllers(thetitle: "Activities", imageName: "Activities"), createNavControllers(thetitle: "Ranking", imageName: "Ranking")]
        // Do any additional setup after loading the view.
    }
    
    private func createNavControllers(thetitle: String, imageName: String) -> UINavigationController {
        let collectionviewController = ListCollectionViewController(itemTitle:thetitle)
        let navController = UINavigationController(rootViewController: collectionviewController)
        navController.tabBarItem.title = thetitle
        navController.tabBarItem.image = UIImage(named: imageName)
        return navController
    }



}
