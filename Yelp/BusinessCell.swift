//
//  BusinessCell.swift
//  Yelp
//
//  Created by Haimei Yang on 2/17/18.
//  Copyright © 2018 Timothy Lee. All rights reserved.
//

import UIKit

class BusinessCell: UITableViewCell {
    //Outlets
    @IBOutlet weak var ThumbImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var moneyLabel: UILabel!
    @IBOutlet weak var reviewsCountLabel: UILabel!
    @IBOutlet weak var ratingImageView: UIImageView!
    @IBOutlet weak var adressLabel: UILabel!
    @IBOutlet weak var categoriesLabel: UILabel!
    
    //Variables
    var business: Business! {
        didSet {
            nameLabel.text = business.name
            if(business.imageURL != nil) {
                ThumbImageView.setImageWith(business.imageURL!)
            }
            categoriesLabel.text = business.categories
            adressLabel.text = business.address
            distanceLabel.text = business.distance
            reviewsCountLabel.text = "\(business.reviewCount!) Reviews"
            ratingImageView.setImageWith(business.ratingImageURL!)
            
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        ThumbImageView.layer.cornerRadius = 3
        ThumbImageView.clipsToBounds = true
        nameLabel.preferredMaxLayoutWidth = nameLabel.frame.size.width
        // Initialization code
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        nameLabel.preferredMaxLayoutWidth = nameLabel.frame.size.width
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
