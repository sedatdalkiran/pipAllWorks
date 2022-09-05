//
//  ViewController.swift
//  AvPlayerLayerDemo
//
//  Created by SEDAT DALKIRAN on 23.08.2022.
//

import UIKit
import AVFoundation
import AVKit

class ViewController: UIViewController {
    
    @IBOutlet weak var videoView: UIView!
    
    var player: AVPlayer!
    var avpController = AVPlayerViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startVideo()
        
    }
    
    func startVideo() {
        
        let url = URL(string: "https://moctobpltc-i.akamaihd.net/hls/live/571329/eight/playlist.m3u8")
        player = AVPlayer(url: url!)
        avpController.player = player
        avpController.view.frame.size.height = videoView.frame.size.height
        avpController.view.frame.size.width = videoView.frame.size.width
        self.videoView.addSubview(avpController.view)
        player.play()
    }
    
}

