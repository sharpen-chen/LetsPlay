//
//  EventsCell.swift
//  LetsPlay
//
//  Created by Admin on 17/05/2017.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

class EventsCell: UICollectionViewCell {
    override init(frame: CGRect) {
        super.init(frame: frame)
        createViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var post: PostCell? {
         didSet {
            titleLabel.text = "New title"
            eventCreatorLabel.text = "New Creator"
            rankingImage.image = UIImage(named: "")
        }
    }
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Events Title"
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.backgroundColor = UIColor.purple
        return label
    }()
    
    let eventCreatorLabel: UILabel = {
        let label = UILabel()
        label.text = "Creator"
        label.backgroundColor = UIColor.orange
        label.font = UIFont.boldSystemFont(ofSize: 14)
        return label
    }()
    
    let rankingImage: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        image.backgroundColor = UIColor.blue
        return image
    }()
    
    func createViews(){
        backgroundColor = UIColor.white
        
        addSubview(titleLabel)
        addSubview(eventCreatorLabel)
        addSubview(rankingImage)
        
        addConstraintsWithFormat(format: "H:|-8-[v0(44)]-8-[v1]|", views :rankingImage, titleLabel)
        addConstraintsWithFormat(format: "H:|-8-[v0(44)]-8-[v1]|", views :rankingImage, eventCreatorLabel)
        
        addConstraintsWithFormat(format: "V:|[v0]-8-[v1]|", views :titleLabel, eventCreatorLabel)
        addConstraintsWithFormat(format: "V:|-8-[v0]-8-|", views :rankingImage)
  
    }
}
