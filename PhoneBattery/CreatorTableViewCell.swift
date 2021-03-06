//
//  CreatorTableViewCell.swift
//  PhoneBattery
//
//  Created by Marcel Voss on 21.06.15.
//  Copyright (c) 2015 Marcel Voss. All rights reserved.
//

import UIKit

class CreatorTableViewCell: UITableViewCell {
    
    let jobLabel = UILabel()
    let nameLabel = UILabel()
    let avatarImageView = UIImageView()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        avatarImageView.layer.cornerRadius = 50 / 2
        avatarImageView.translatesAutoresizingMaskIntoConstraints = false
        avatarImageView.contentMode = .ScaleAspectFit
        avatarImageView.layer.masksToBounds = true
        avatarImageView.layer.borderColor = UIColor.grayColor().CGColor
        avatarImageView.layer.borderWidth = 0.25
        self.contentView.addSubview(avatarImageView)
        
        self.contentView.addConstraint(NSLayoutConstraint(item: avatarImageView, attribute: .Left, relatedBy: .Equal, toItem: self.contentView, attribute: .Left, multiplier: 1.0, constant: 18))
        
        self.contentView.addConstraint(NSLayoutConstraint(item: avatarImageView, attribute: .Height, relatedBy: .Equal, toItem: nil, attribute: .Height, multiplier: 1.0, constant: 50))
        
        self.contentView.addConstraint(NSLayoutConstraint(item: avatarImageView, attribute: .Width, relatedBy: .Equal, toItem: nil, attribute: .Width, multiplier: 1.0, constant: 50))
        
        self.contentView.addConstraint(NSLayoutConstraint(item: avatarImageView, attribute: .CenterY, relatedBy: .Equal, toItem: self.contentView, attribute: .CenterY, multiplier: 1.0, constant: 0))

        
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.font = UIFont.systemFontOfSize(17)
        self.contentView.addSubview(nameLabel)
        
        self.contentView.addConstraint(NSLayoutConstraint(item: nameLabel, attribute: .Left, relatedBy: .Equal, toItem: avatarImageView, attribute: .Right, multiplier: 1.0, constant: 15))
        
        self.contentView.addConstraint(NSLayoutConstraint(item: nameLabel, attribute: .CenterY, relatedBy: .Equal, toItem: self.contentView, attribute: .CenterY, multiplier: 1.0, constant: -10))
        
        
        jobLabel.translatesAutoresizingMaskIntoConstraints = false
        jobLabel.font = UIFont.systemFontOfSize(14)
        self.contentView.addSubview(jobLabel)
        
        self.contentView.addConstraint(NSLayoutConstraint(item: jobLabel, attribute: .Left, relatedBy: .Equal, toItem: avatarImageView, attribute: .Right, multiplier: 1.0, constant: 15))
        
        self.contentView.addConstraint(NSLayoutConstraint(item: jobLabel, attribute: .CenterY, relatedBy: .Equal, toItem: self.contentView, attribute: .CenterY, multiplier: 1.0, constant: 10))
    
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
