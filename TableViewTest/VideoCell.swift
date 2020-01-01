//
//  VideoCell.swift
//  TableViewTest
//
//  Created by Sudipto Roy on 1/1/20.
//  Copyright © 2020 Code-X Systems. All rights reserved.
//

import UIKit

class VideoCell: UITableViewCell {

    /* override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    } */ 

    @IBOutlet weak var videoImageView: UIImageView!
    @IBOutlet weak var videoTitleLabel: UILabel!
    
    func setVideo (video : Video) {
        videoImageView.image = video.image
        videoTitleLabel.text = video.title
    }
    
    
}
