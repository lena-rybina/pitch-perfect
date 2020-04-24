//
//  AppDelegate.swift
//  PitchPerfect
//
//  Created by Ielena Rybina on 4/21/20.
//  Copyright © 2020 Ielena Rybina. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow()
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let rootViewController = storyboard.instantiateViewController(withIdentifier: "RootViewController")
        
        window?.rootViewController = rootViewController
        return true
    }
}

