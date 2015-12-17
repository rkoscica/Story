//
//  AppDelegate.swift
//  StoryExample
//
//  Created by Michael Litman on 12/16/15.
//  Copyright © 2015 anna. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool
    {
        //Write our story
        let firstPage = Page(pageText: "The first page text")
        StoryCore.theStory = Story(startPage: firstPage)
        StoryCore.currPage = firstPage

        //create the options for our first page
        let page2 = Page(pageText: "This is page2")
        let page3 = Page(pageText: "This is page3")
        let page4 = Page(pageText: "This is page4")
        let page5 = Page(pageText: "This is page5")
        firstPage.addOption(Option(optionText: "Option #1", destinationPage: page2))
        firstPage.addOption(Option(optionText: "Option #2", destinationPage: page3))
        firstPage.addOption(Option(optionText: "Option #3", destinationPage: page4))
        firstPage.addOption(Option(optionText: "Option #4", destinationPage: page5))



        
        //add options to page 2
        let page6 = Page(pageText: "This is page6")
        let page7 = Page(pageText: "This is page7")
        let page8 = Page(pageText: "This is page8")
        let page9 = Page(pageText: "This is page9")
        page2.addOption(Option(optionText: "Opt #1", destinationPage: page6))
        page2.addOption(Option(optionText: "Opt 2", destinationPage: page7))
        page2.addOption(Option(optionText: "to p8", destinationPage: page8))
        page2.addOption(Option(optionText: "to p9", destinationPage: page9))

        
        
        
        
        // Override point for customization after application launch.
        return true
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

