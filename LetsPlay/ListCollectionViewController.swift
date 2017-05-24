//
//  ListCollectionViewController.swift
//  LetsPlay
//
//  Created by Admin on 16/05/2017.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

var cellIdentifier = ""
var cellClassName = ""
var cellClass:AnyClass? = nil

class ListCollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    init(itemTitle: String, currentCellIdentifier: String, currentCellClassName: String, receivedData: [NSArray]) {
        super.init(collectionViewLayout: UICollectionViewFlowLayout())
        
        let plistFileName = Bundle.main.infoDictionary?["TargetName"] as! String
        cellIdentifier = currentCellIdentifier
        cellClassName = plistFileName + "." + currentCellClassName
        cellClass = NSClassFromString(cellClassName).self
//        print(receivedData.description)
//        for item in receivedData {
//            print(item)
//        }
        
        self.navigationItem.title = itemTitle
        collectionView?.alwaysBounceVertical = true
        collectionView?.backgroundColor = UIColor.brown
        collectionView?.register(cellClass, forCellWithReuseIdentifier: cellIdentifier)

    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 60)
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath)
    }
}
