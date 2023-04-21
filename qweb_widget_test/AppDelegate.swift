//
//  AppDelegate.swift
//  qweb_widget_test
//
//  Created by Nurken Tileubergenov on 22.02.2023.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
  var window: UIWindow?
  var nav: AppCoordinator!


  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    // Override point for customization after application launch.
    
    //MARK: - Entry point
    window = UIWindow(frame: UIScreen.main.bounds)
    
//    requestMicPermission()
//    requestCamPermission()
    
    nav = AppCoordinator(window: window!)
    nav.start()
    
    return true
  }


}

