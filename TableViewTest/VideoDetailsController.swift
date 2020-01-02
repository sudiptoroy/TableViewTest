//
//  VideoDetailsController.swift
//  TableViewTest
//
//  Created by Sudipto Roy on 1/2/20.
//  Copyright © 2020 Code-X Systems. All rights reserved.
//

import UIKit

class VideoDetailsController: UIViewController {

    @IBOutlet weak var videoImage: UIImageView!
    @IBOutlet weak var videoTitle: UILabel!
    
    var video:Video?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let video = self.video {
            self.videoImage.image = video.image
            self.videoTitle.text = video.title
        }
        // Do any additional setup after loading the view.
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
