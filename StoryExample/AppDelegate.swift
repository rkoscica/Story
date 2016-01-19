//
//  AppDelegate.swift
//  StoryExample
//
//  Created by RK on 12/16/15. 
//  Copyright © 2015 RK. All rights reserved.
//

import UIKit



@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool
    {

        //Write our story
        page1 = Page(pageText: "You wake up on the edge of a forest, unable to remember who you are or how you arrived there. Your pocket is empty. On one side, trees wave gently in the wind. A helpful sign points to a trail that allegedly leads to a stream. On your other side, large vehicles zoom down a highway. You are feeling a bit thirsty. What do you do?")
        StoryCore.theStory = Story(startPage: page1)
        StoryCore.currPage = page1

        page1.addOption(Option(optionText: "Search for the stream.", destinationPage: page2))
        page1.addOption(Option(optionText: "Walk in a random direction.", destinationPage: page3))
        page1.addOption(Option(optionText: "Take a nap.", destinationPage: page4))
        page1.addOption(Option(optionText: "Cross the street.", destinationPage: page5))
        
        page2.addOption(Option(optionText: "Drink some water.", destinationPage: page6))
        page2.addOption(Option(optionText: "Go swimming.", destinationPage: page7))
        page2.addOption(Option(optionText: "Walk a bit more.", destinationPage: page8))
        page2.addOption(Option(optionText: "Poke around the riverbank.", destinationPage: page17))

        page3.addOption(Option(optionText: "Try to stop the bleeding.", destinationPage: page10))
        page3.addOption(Option(optionText: "Start screaming in pain.", destinationPage: page11))
        
        page4.addOption(Option(optionText: "Sleep for 2 hours.", destinationPage: page12))
        page4.addOption(Option(optionText: "Sleep all night.", destinationPage: page13))
        page4.addOption(Option(optionText: "Reflect on your situation.", destinationPage: page14))

        page5.addOption(Option(optionText: "Get re-in-car-Nate-'d!", destinationPage: page15))
        
        page6.addOption(Option(optionText: "Eat the mushrooms.", destinationPage: page16))
        page6.addOption(Option(optionText: "Find something else.", destinationPage: page17))
        page6.addOption(Option(optionText: "Drink more water.", destinationPage: page18))
        
        page7.addOption(Option(optionText: "Pluck them off.", destinationPage: page41))
        page7.addOption(Option(optionText: "Ignore them. Find shelter.", destinationPage: page34))
        
        page8.addOption(Option(optionText: "Find somewhere to rest.", destinationPage: page34))
        
        page11.addOption(Option(optionText: "You are dead. Respawn?", destinationPage: page1))
        
        page12.addOption(Option(optionText: "You are dead. Respawn?", destinationPage: page1))
        
        page13.addOption(Option(optionText: "Search for the stream.", destinationPage: page2))
        page13.addOption(Option(optionText: "Cross the street.", destinationPage: page5))
        page13.addOption(Option(optionText: "Wave down a car.", destinationPage: page22))
        
        page14.addOption(Option(optionText: "Go towards the car.", destinationPage: page21))
        page14.addOption(Option(optionText: "Run the other direction.", destinationPage: page23))

        page15.addOption(Option(optionText: "You are dead. Respawn?", destinationPage: page1))
        
        page16.addOption(Option(optionText: "Take a *yawn* short nap.", destinationPage: page38))
        
        page17.addOption(Option(optionText: "Eat the 'salad'.", destinationPage: page19))
        page17.addOption(Option(optionText: "Eww, vegetables.", destinationPage: page20))
        page17.addOption(Option(optionText: "Look for protein.", destinationPage: page9))
        
        page18.addOption(Option(optionText: "Take a *yawn* short nap.", destinationPage: page38))
        
        page19.addOption(Option(optionText: "Make a campfire.", destinationPage: page33))
        page19.addOption(Option(optionText: "Search for shelter.", destinationPage: page34))
        
        page20.addOption(Option(optionText: "Look for pizza.", destinationPage: page28))
        page20.addOption(Option(optionText: "Eww, bugs! Eww, nature!", destinationPage: page29))
        page20.addOption(Option(optionText: "Go hunting for meat.", destinationPage: page30))
        
        page21.addOption(Option(optionText: "See if the driver is ok.", destinationPage: page24))
        page21.addOption(Option(optionText: "Steal the cash and run.", destinationPage: page25))
        
        page22.addOption(Option(optionText: "Hop into the car.", destinationPage: page26))
        page22.addOption(Option(optionText: "Wait for someone else.", destinationPage: page27))
        
        page24.addOption(Option(optionText: "Bind the person's wounds.", destinationPage: page31))
        page24.addOption(Option(optionText: "Hop in the car and drive off.", destinationPage: page32))
        
        page32.addOption(Option(optionText: "Press the left pedal.", destinationPage: page36))
        page32.addOption(Option(optionText: "Step on the right pedal.", destinationPage: page35))
        page32.addOption(Option(optionText: "Push the stick between the seats.", destinationPage: page37))
        
        page34.addOption(Option(optionText: "Build a campfire.", destinationPage: page33))
        page34.addOption(Option(optionText: "Go straight to sleep.", destinationPage: page42))
        
        page38.addOption(Option(optionText: "Vomit.", destinationPage: page39))
        page38.addOption(Option(optionText: "Keep it in.", destinationPage: page40))
        
        page40.addOption(Option(optionText: "You are dead. Respawn?", destinationPage: page1))
        
        page42.addOption(Option(optionText: "You are dead. Respawn?", destinationPage: page1))
        
        page101.addOption(Option(optionText: "The end. Play again?", destinationPage: page1))
        
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

