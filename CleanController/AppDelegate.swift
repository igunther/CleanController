//
//  AppDelegate.swift
//  CleanController
//
//  Created by Øystein Günther on 16/04/2019.
//  Copyright © 2019 Øystein Günther. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow()
        window?.makeKeyAndVisible()
        window?.rootViewController = SharedController()
        
        return true
    }

    

}

