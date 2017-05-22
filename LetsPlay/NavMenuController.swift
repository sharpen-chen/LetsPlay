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
        self.viewControllers = [createNavControllers(thetitle: "Events", imageNavName: "Events", cellIdentifier: "MyCell", cellClassName: "EventsCell"),
                                createNavControllers(thetitle: "Activities", imageNavName: "Activities", cellIdentifier: "MyCell", cellClassName: "ActivitiesCell"),
                                createNavControllers(thetitle: "Ranking", imageNavName: "Ranking", cellIdentifier: "MyCell", cellClassName: "RankingCell")]
        // Do any additional setup after loading the view.
    }
    
    private func createNavControllers(thetitle: String, imageNavName: String, cellIdentifier: String, cellClassName: String) -> UINavigationController {
        let collectionviewController = ListCollectionViewController(itemTitle: thetitle, currentCellIdentifier: cellIdentifier, currentCellClassName: cellClassName)
        let navController = UINavigationController(rootViewController: collectionviewController)
        navController.tabBarItem.title = thetitle
        navController.tabBarItem.image = UIImage(named: imageNavName)
        navController.navigationBar.barTintColor = UIColor.red
        navController.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName:UIColor.white]
        return navController
    }


}
