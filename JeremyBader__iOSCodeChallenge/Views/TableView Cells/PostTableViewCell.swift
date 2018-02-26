//
//  PostTableViewCell.swift
//  JeremyBader__iOSCodeChallenge
//
//  Created by Jeremy Bader on 2/25/18.
//  Copyright © 2018 Jeremy Bader. All rights reserved.
//

import UIKit
class PostTableViewCell: UITableViewCell {
    
    var myLabel = UILabel()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        myLabel.backgroundColor = UIColor.yellow
        self.contentView.addSubview(myLabel)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        myLabel.frame = CGRect(x: 20, y: 0, width: 70, height: 30)
    }
}
