//
//  AppDelegate.swift
//  WorkoutBuddy
//
//  Created by Erik Roberts on 6/20/16.
//  Copyright © 2016 Erik Roberts. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    var landingNavController : UINavigationController?
    
    var trackerDateNavController : UINavigationController?
    
    var musicNavController : UINavigationController?
    
    var motivationNavController : UINavigationController?
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        self.window = UIWindow(frame : UIScreen.mainScreen().bounds)
        // Override point for customization after application launch.
        
        navigateToLVC()
        landingNavController?.navigationBarHidden = true
                self.window?.makeKeyAndVisible()
        return true
    }
    func navigateToLVC(){
        let lvc = LandingViewController(nibName: "LandingViewController", bundle: nil)
        landingNavController = UINavigationController(rootViewController: lvc)
        self.window?.rootViewController = landingNavController
    }
    
    func navigateToTracker(){
        let tdvc = TrackerDateViewController(nibName : "TrackerDateViewController" , bundle : nil)
        trackerDateNavController = UINavigationController(rootViewController: tdvc)
        self.window?.rootViewController = trackerDateNavController
        
    }
    func navigateToMusic(){
        //let muvc = MusicViewController(nibname: "MusicViewController" , bundle : nil)
        //musicNavController = UINavigationController(nibName : "muvc" , bundle: nil)
        //self.window?.rootViewController =
    }
    func navigateToMotivation(){
        //let movc = MotivationViewController(nibName: "MotivationViewController" , bundle: nil)
        //motivationNavController = UINavigationController(nibName: "movc", bundle: nil)
        //self.window?.rootViewController =
        
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

