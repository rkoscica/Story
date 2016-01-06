//
//  AppDelegate.swift
//  StoryExample
//
//  Created by Michael Litman on 12/16/15. 
//  Copyright © 2015 anna. All rights reserved.
//

import UIKit

var page1 = Page(pageText: "")

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool
    {

        //Write our story
        page1 = Page(pageText: "You wake up on the edge of a forest, unable to remember who you are or how you arrived there. On one side, trees wave gently in the wind. A helpful sign points to a trail that supposedly leads to a stream. On your other side, large trucks zoom down a highway. You are feeling a bit thirsty. What do you do?")
        StoryCore.theStory = Story(startPage: page1)
        StoryCore.currPage = page1

        //create the options for our first page
        let page2 = Page(pageText: "After what seems like hours of exhausting hiking over several hills, a faint trickling sound reaches your ears. You hurry forward, eager to find it, as you are even thirstier than before. Suddenly, the trees part. The stream is small, but the water looks clear and feels blissfully cool when you dip your fingers in.")
        let page3 = Page(pageText: "This is page3")
        let page4 = Page(pageText: "This is page4")
        let page5 = Page(pageText: "You are squished by a car.")
        page1.addOption(Option(optionText: "Search for the stream.", destinationPage: page2))
        page1.addOption(Option(optionText: "Option #2", destinationPage: page3))
        page1.addOption(Option(optionText: "Option #3", destinationPage: page4))
        page1.addOption(Option(optionText: "Cross the street.", destinationPage: page5))

        
        //add options to page 2
        let page6 = Page(pageText: "The water is cool and refreshing. You drink as much as you can, but you soon notice that you are also hungry. You glance upward and spot a small cluster of spotted red mushrooms. The vibrant red colors seem a bit suspicious, but you've survived worse... right? Besides, you remember reading that some harmless plants use toxic-looking colors to scare away predators. It could be the same for fungi; the mushroom is probably harmless.")
        let page7 = Page(pageText: "This is page7")
        let page8 = Page(pageText: "This is page8")
        let page9 = Page(pageText: "This is page9")
        page2.addOption(Option(optionText: "Drink some water.", destinationPage: page6))
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
        
        //p6
        let page16 = Page(pageText: "You throw caution to the wind and take a big bite. It is surprisingly tasty, and you don't feel sick at all. You hungrily pick the rest of the mushrooms and consume them.")
        let page17 = Page(pageText: "This is page8")
        let page18 = Page(pageText: "This is page9")
        page6.addOption(Option(optionText: "Eat the mushrooms.", destinationPage: page16))
        page6.addOption(Option(optionText: "Find something else.", destinationPage: page17))
        page6.addOption(Option(optionText: "to p8", destinationPage: page18))
        
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

