//
//  PostTableViewCell.swift
//  JeremyBader__iOSCodeChallenge
//
//  Created by Jeremy Bader on 2/25/18.
//  Copyright © 2018 Jeremy Bader. All rights reserved.
//

import UIKit
import SnapKit

class PostTableViewCell: UITableViewCell {
    
    var titleLabel = UILabel()
    var authorLabel = UILabel()
    var numCommentsLabel = UILabel()
    var upsLabel = UILabel()
    var downsLabel = UILabel()
    var thumbnailImageView = UIImageView()
    var statsBackgroundImageView = UIImageView()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.contentView.addSubview(titleLabel)
        self.contentView.addSubview(authorLabel)
        self.contentView.addSubview(numCommentsLabel)
        self.contentView.addSubview(upsLabel)
        self.contentView.addSubview(downsLabel)
        self.contentView.addSubview(thumbnailImageView)
        self.contentView.addSubview(statsBackgroundImageView)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        let backgroundImage = UIImage(named: "stats-bg")
        statsBackgroundImageView = UIImageView(image: backgroundImage)
        //titleLabel.frame = CGRect(x: 20, y: 0, width: 70, height: 30)
        titleLabel.textAlignment = .center
        titleLabel.font = UIFont(name: "bebasneue", size: 20)
        titleLabel.textColor = UIColor.blue
        titleLabel.text = "Title"
        
        self.titleLabel.snp.makeConstraints { (label) in
            label.left.equalToSuperview().offset(100)
            //label.right.equalToSuperview().inset(12)
        }
    }
}
