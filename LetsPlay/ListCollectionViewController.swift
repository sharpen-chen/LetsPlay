//
//  ListCollectionViewController.swift
//  LetsPlay
//
//  Created by Admin on 16/05/2017.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

class ListCollectionViewController: UICollectionViewController {
    
    init(itemTitle: String) {
        super.init(collectionViewLayout: UICollectionViewLayout())
        self.navigationItem.title = itemTitle
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView?.backgroundColor = UIColor.gray
        
        // Do any additional setup after loading the view.
    }


}
