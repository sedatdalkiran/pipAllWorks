//
//  AppDelegate.swift
//  AvPlayerLayerDemo
//
//  Created by SEDAT DALKIRAN on 23.08.2022.
//

import UIKit
import CoreData
import AVKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        let session = AVAudioSession.sharedInstance()
        
        do {
            try session.setCategory(.playback, mode: .moviePlayback)
        }
        catch let err {
            print(err.localizedDescription)
        }
        
        return true
    }

}

