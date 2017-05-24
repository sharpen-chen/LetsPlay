//
//  ActivitiesCell.swift
//  LetsPlay
//
//  Created by Admin on 17/05/2017.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

class ActivitiesCell: UICollectionViewCell {
    override init(frame: CGRect) {
        super.init(frame: frame)
        createViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var post: PostCell? {
        didSet {
            personNameLabel.text = post?.mainLabel
            activityLabel.text = post?.secondaryLabel
            eventLabel.text = post?.thirdLabel
        }
    }
    
    let personNameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.backgroundColor = UIColor.white
        label.text = "name person"
        return label
    }()
    
    let activityLabel: UILabel = {
        let label = UILabel()
        label.text = "won/lose"
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.backgroundColor = UIColor.red
        return label
    }()
    
    let eventLabel: UILabel = {
        let label = UILabel()
        label.text = "event name"
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.backgroundColor = UIColor.yellow
        return label
    }()
    
    func createViews(){
        backgroundColor = UIColor.green
        
        addSubview(personNameLabel)
        addSubview(activityLabel)
        addSubview(eventLabel)
        
        addConstraintsWithFormat(format: "H:|-4-[v0]-8-[v1]-8-[v2]-4-|", views: personNameLabel, activityLabel, eventLabel)
        
        addConstraintsWithFormat(format: "V:|-4-[v0]-4-|", views: personNameLabel)
        addConstraintsWithFormat(format: "V:|-4-[v0]-4-|", views: activityLabel)
        addConstraintsWithFormat(format: "V:|-4-[v0]-4-|", views: eventLabel)
        
    }
}
