//
//  AllMightyCollectionCell.swift
//  LetsPlay
//
//  Created by Admin on 18/05/2017.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit


extension UIView {
    func addConstraintsWithFormat(format: String, views: UIView...){
        var viewsDictionnary = [String: UIView]()
        for (index, view) in views.enumerated() {
            let key = "v\(index)"
            viewsDictionnary[key] = view
            view.translatesAutoresizingMaskIntoConstraints = false
        }
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: format,
                                                      options: NSLayoutFormatOptions(),metrics: nil, views: viewsDictionnary))

    }
}
