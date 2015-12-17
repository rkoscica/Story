//
//  AppDelegate.swift
//  StoryExample
//
//  Created by Michael Litman on 12/16/15 for Rosalyn Koscica. 
//  Copyright © 2015 anna. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool
    {
        //Write our story
        let page1 = Page(pageText: "You find yourself in a forest.")
        StoryCore.theStory = Story(startPage: page1)
        StoryCore.currPage = page1

        //create the options for our first page
        let page2 = Page(pageText: "This is page2")
        let page3 = Page(pageText: "This is page3")
        let page4 = Page(pageText: "This is page4")
        let page5 = Page(pageText: "You are squished by a car.")
        page1.addOption(Option(optionText: "Option #1", destinationPage: page2))
        page1.addOption(Option(optionText: "Option #2", destinationPage: page3))
        page1.addOption(Option(optionText: "Option #3", destinationPage: page4))
        page1.addOption(Option(optionText: "Walk to the street.", destinationPage: page5))

        
        //add options to page 2
        let page6 = Page(pageText: "This is page6")
        let page7 = Page(pageText: "This is page7")
        let page8 = Page(pageText: "This is page8")
        let page9 = Page(pageText: "This is page9")
        page2.addOption(Option(optionText: "Opt #1", destinationPage: page6))
        page2.addOption(Option(optionText: "Opt 2", destinationPage: page7))
        page2.addOption(Option(optionText: "to p8", destinationPage: page8))
        page2.addOption(Option(optionText: "to p9", destinationPage: page9))
        
        //add options to page 3
        let page10 = Page(pageText: "This is page")
        let page11 = Page(pageText: "This is pages")
        page3.addOption(Option(optionText: "Opt #1", destinationPage: page10))
        page3.addOption(Option(optionText: "Opt 2", destinationPage: page11))
        
        //add options to page 4
        let page12 = Page(pageText: "This is pagee")
        let page13 = Page(pageText: "This is pager")
        let page14 = Page(pageText: "This is page9")
        page4.addOption(Option(optionText: "Opt #1", destinationPage: page12))
        page4.addOption(Option(optionText: "Opt 2", destinationPage: page13))
        page4.addOption(Option(optionText: "to p9", destinationPage: page14))
        
        //add options to page 5
        let page15 = Page(pageText: "You lie in the street, your organs spattered across the asphalt. Just as you think you can muster the strength to crawl away, you hear the revving of the car that hit you. In the car is an angry-looking man with a prominent tattoo of his name - Nate. He pauses for a single moment, during which time you desperately hope it will not hurt as much as the previous collision. You are wrong - it hurts more... but nothingness follows soon after.")
        page5.addOption(Option(optionText: "Get re-in-car-Nate-'d!", destinationPage: page15))
        
        //options for page 15
        page15.addOption(Option(optionText: "You are dead. Reset?", destinationPage: page1))
        
        
        
        
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

