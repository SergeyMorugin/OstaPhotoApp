//
//  FeedItemCell.swift
//  OstaPhotoApp
//
//  Created by Matthew on 30.08.2021.
//

import UIKit
import Kingfisher

class FeedItemCell: UITableViewCell {
    @IBOutlet weak var resultImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(by feedItem: FeedItem){
        let resultImageUrl = URL(string: feedItem.resultImage!)
        resultImageView.kf.setImage(with: resultImageUrl)
    }
    
}
