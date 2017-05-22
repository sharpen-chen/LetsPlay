//
//  PostCell.swift
//  LetsPlay
//
//  Created by Admin on 22/05/2017.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

class PostCell: NSObject {
    init(dataInit: [String:Any?]) {
        super.init()
        
        var eventName:String = dataInit[""] as! String
        var personName:String = dataInit[""] as! String
        var imageLevelEvent:UIImage = UIImage(named: dataInit[""] as! String)!
        
        var activityName:String = dataInit[""] as! String
        var pointsRanking:String = dataInit[""] as! String
        
        
    }
}
