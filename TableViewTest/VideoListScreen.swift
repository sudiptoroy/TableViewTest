//
//  VideoListScreen.swift
//  TableViewTest
//
//  Created by Sudipto Roy on 1/1/20.
//  Copyright © 2020 Code-X Systems. All rights reserved.
//

import UIKit

class VideoListScreen: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var videos: [Video] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        videos = createArray()
        
        //tableView.delegate = self
        //tableView.dataSource = self

        // Do any additional setup after loading the view.
    }
    
    func createArray() -> [Video] {
        
        var tempVideos: [Video] = []
        
        let video1 = Video(image: UIImage(named: "beginner-first-app")!, title: "Your First App")
        let video2 = Video(image: UIImage(named: "dev-setup")!, title: "My Dev Setup")
        let video3 = Video(image: UIImage(named: "int-overview")!, title: "iOS Interview")
        let video4 = Video(image: UIImage(named: "ss-delegates")!, title: "Buttons in TableViews")
        let video5 = Video(image: UIImage(named: "ss-uipickerview-card")!, title: "UIPickerView Tutorial")
        let video6 = Video(image: UIImage(named: "vlog-4")!, title: "Day in the Life")
        
        tempVideos.append(video1)
        tempVideos.append(video2)
        tempVideos.append(video3)
        tempVideos.append(video4)
        tempVideos.append(video5)
        tempVideos.append(video6)
        
        return tempVideos
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

extension VideoListScreen: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let video = videos[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "VideoCell") as! VideoCell
        
        cell.setVideo(video: video)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(videos[indexPath.row].title)
    }
    
}
