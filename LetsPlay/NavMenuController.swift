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
        readJson()
        
        
        // Do any additional setup after loading the view.
    }
    
    func readJson(){
        do {
            if let file = Bundle.main.url(forResource: "generated", withExtension: "json") {
                let data = try Data(contentsOf: file)
                let json = try JSONSerialization.jsonObject(with: data, options: [])
                if let object = json as? [String: Any] {
                    manageNavView(dictData: object)
                } else if let object = json as? [Any] {
                    print(object)
                } else {
                    print("JSON is invalid")
                }
            } else {
                print("no file")
            }
        } catch {
            print(error.localizedDescription)
        }
    }
    
    func manageNavView(dictData: [String:Any]){
        self.viewControllers = [createNavControllers(thetitle: "Events", imageNavName: "Events", cellIdentifier: "MyCell",
                                                     cellClassName: cellType.eventsCell.rawValue,
                                                     dataForEachCell: dictData["Events"] as! [NSArray]),
                                createNavControllers(thetitle: "Activities", imageNavName: "Activities", cellIdentifier: "MyCell",
                                                     cellClassName: cellType.activitiesCell.rawValue,
                                                     dataForEachCell: dictData["Activities"] as! [NSArray]),
                                createNavControllers(thetitle: "Ranking", imageNavName: "Ranking", cellIdentifier: "MyCell",
                                                     cellClassName: cellType.rankingCell.rawValue,
                                                     dataForEachCell: dictData["Ranking"] as! [NSArray])]
    }
    
    private func createNavControllers(thetitle: String, imageNavName: String, cellIdentifier: String, cellClassName: String, dataForEachCell:[NSArray]) -> UINavigationController {
        let collectionviewController = ListCollectionViewController(itemTitle: thetitle, currentCellIdentifier: cellIdentifier,
                                                                    currentCellClassName: cellClassName, receivedData: dataForEachCell)
        let navController = UINavigationController(rootViewController: collectionviewController)
        navController.tabBarItem.title = thetitle
        navController.tabBarItem.image = UIImage(named: imageNavName)
        navController.navigationBar.barTintColor = UIColor.red
        navController.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName:UIColor.white]
        return navController
    }
    

}
