//
//  PostCell.swift
//  LetsPlay
//
//  Created by Admin on 22/05/2017.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

class PostCell: NSObject {
    
    var mainLabel: String?
    var secondaryLabel:String?
    var thirdLabel:String?
    var imageCell:UIImage?
    var activityName:String?
    var pointsRanking:String?
    
    var cellHeight:CGRect?

    
    init(dataInit:[String:Any?]) {
        super.init()
        
        mainLabel = dataInit[""] as? String
        secondaryLabel = dataInit[""] as? String
        thirdLabel = dataInit[""] as? String
        imageCell = UIImage(named: dataInit[""] as! String)
        
        activityName = dataInit[""] as? String
        pointsRanking = dataInit[""] as? String
        
        
    }
}
