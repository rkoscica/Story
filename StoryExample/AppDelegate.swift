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
        page1 = Page(pageText: "You wake up on the edge of a forest, unable to remember who you are or how you arrived there. Your pocket is empty save for a small multi-tool. On one side, trees wave gently in the wind. A helpful sign points to a trail that allegedly leads to a stream. On your other side, large trucks zoom down a highway. You are feeling a bit thirsty. What do you do?")
        StoryCore.theStory = Story(startPage: page1)
        StoryCore.currPage = page1

        //create the options for our first page
        let page2 = Page(pageText: "After what seems like hours of exhausting hiking over several hills, a faint trickling sound reaches your ears. You hurry forward, eager to find it, as you are even thirstier than before. Suddenly, the trees part. The current is fast, but the water looks clear and feels blissfully cool when you dip your fingers in.")
        let page3 = Page(pageText: "You close your eyes, spin in a circle three times, and start walking. Unfortunately, you trip over a rock and slam face-first into a tree trunk. Now, you have a broken ankle and a deep gash on your forehead. You can feel the warm, sticky blood slowly trickling down your face.")
        let page4 = Page(pageText: "The side of the road is as good a place as any for a nap. You clear the sticks and dead leaves away from the roots of a large tree. When you are done, there is a surprisingly comfortable bare patch on the ground. You curl up against the tree and close your eyes.")
        let page5 = Page(pageText: "You eagerly step into the street, forgetting to check for incoming vehicles. Not two steps into the street, an incredibly shiny sports car slams into you. As you slide off the hood, you unexpectedly find yourself saddened by the way your blood is staining the car's otherwise perfect paint... then your broken ribs register, and you start screaming.")
        page1.addOption(Option(optionText: "Search for the stream.", destinationPage: page2))
        page1.addOption(Option(optionText: "Walk in a random direction.", destinationPage: page3))
        page1.addOption(Option(optionText: "Take a nap.", destinationPage: page4))
        page1.addOption(Option(optionText: "Cross the street.", destinationPage: page5))
        
        //add options to page 2
        let page6 = Page(pageText: "The water is cool and refreshing. You drink as much as you can, but you soon notice that you are also hungry. You glance upward and spot a small cluster of spotted red mushrooms. The vibrant red colors seem a bit suspicious, but you've survived worse... right? Besides, you remember reading that some harmless plants use toxic-looking colors to scare away predators. It could be the same for fungi; the mushroom is probably edible.")
        let page7 = Page(pageText: "")
        let page8 = Page(pageText: "")
        let page9 = Page(pageText: "")
        page2.addOption(Option(optionText: "Drink some water.", destinationPage: page6))
        page2.addOption(Option(optionText: "Go swimming.", destinationPage: page7))
        page2.addOption(Option(optionText: "Walk a bit more.", destinationPage: page8))
        page2.addOption(Option(optionText: "Poke around the riverbank.", destinationPage: page9))
        
        //add options to page 3
        let page10 = Page(pageText: "")
        let page11 = Page(pageText: "")
        page3.addOption(Option(optionText: "Try to stop the bleeding.", destinationPage: page10))
        page3.addOption(Option(optionText: "Start screaming in pain.", destinationPage: page11))
        
        //add options to page 4
        let page12 = Page(pageText: "")
        let page13 = Page(pageText: "")
        let page14 = Page(pageText: "")
        page4.addOption(Option(optionText: "", destinationPage: page12))
        page4.addOption(Option(optionText: "", destinationPage: page13))
        page4.addOption(Option(optionText: "", destinationPage: page14))
        
        //add options to page 5
        let page15 = Page(pageText: "You lie in the street, your organs spattered across the asphalt. Just as you think you can muster the strength to crawl away, you hear the revving of the sports car that hit you. In the car is an angry-looking man with a prominent tattoo of his name - Nate. He pauses for a single moment, during which time you desperately hope it will not hurt as much as the previous collision. You are wrong - it hurts more... but nothingness follows soon after.")
        page5.addOption(Option(optionText: "Get re-in-car-Nate-'d!", destinationPage: page15))
        
        //p6
        let page16 = Page(pageText: "You throw caution to the wind and take a big bite. It is surprisingly tasty, and you don't feel sick at all. You hungrily pick the rest of the mushrooms and consume them.")
        let page17 = Page(pageText: "You poke around the riverbank a bit, hungrily gathering a few plants together. One of them stings your hand when you touch it, so you smartly decide not to eat it. However, the others slightly resemble a tossed salad without any dressing. Your stomach grumbles again, telling you to hurry up and consume food.")
        let page18 = Page(pageText: "")
        page6.addOption(Option(optionText: "Eat the mushrooms.", destinationPage: page16))
        page6.addOption(Option(optionText: "Find something else.", destinationPage: page17))
        page6.addOption(Option(optionText: "Drink more water.", destinationPage: page18))
        
        //options for page 15
        page15.addOption(Option(optionText: "You are dead. Reset?", destinationPage: page1))
        
        //17
        let page19 = Page(pageText: "")
        let page20 = Page(pageText: "A wave of disgust sweeps through you, threatening to make you vomit. You chuck the handful of plants as far away as possible. There's no way you would ever eat vegetables, even if your life depended upon it! Besides, you remember hearing that humans can survive around three weeks without food. That's plenty of time to find something better to eat.")
        let page21 = Page(pageText: "")
        page17.addOption(Option(optionText: "Eat the 'salad'.", destinationPage: page19))
        page17.addOption(Option(optionText: "Eww, vegetables.", destinationPage: page20))
        page17.addOption(Option(optionText: "Look for meat.", destinationPage: page21))
        
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

