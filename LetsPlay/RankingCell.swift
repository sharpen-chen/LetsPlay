//
//  RankingCell.swift
//  LetsPlay
//
//  Created by Admin on 17/05/2017.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

class RankingCell: UICollectionViewCell {
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
            pointsLabel.text = post?.secondaryLabel
            rankingImage.image = post?.imageCell
        }
    }
    
    let personNameLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = UIColor.magenta
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.text = "person name"
        return label
    }()
    
    let pointsLabel: UILabel = {
        let label = UILabel()
        label.text = "Points"
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.backgroundColor = UIColor.gray
        return label
    }()
    
    let rankingImage: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        image.backgroundColor = UIColor.blue
        return image
    }()
    
    
    func createViews(){
        backgroundColor = UIColor.cyan
        
        addSubview(personNameLabel)
        addSubview(pointsLabel)
        addSubview(rankingImage)
        
        addConstraintsWithFormat(format: "H:|-8-[v0(44)]-8-[v1]|", views :rankingImage, personNameLabel)
        addConstraintsWithFormat(format: "H:|-8-[v0(44)]-8-[v1]|", views :rankingImage, pointsLabel)
        
        addConstraintsWithFormat(format: "V:|[v0]-8-[v1]|", views :personNameLabel, pointsLabel)
        addConstraintsWithFormat(format: "V:|-8-[v0]-8-|", views :rankingImage)
        
    }
}
