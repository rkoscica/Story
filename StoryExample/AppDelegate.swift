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
        page1 = Page(pageText: "You wake up on the edge of a forest, unable to remember who you are or how you arrived there. Your pocket is empty save for a small plastic card with a seven-digit number written on it. On one side, trees wave gently in the wind. A helpful sign points to a trail that allegedly leads to a stream. On your other side, large vehicles zoom down a highway. You are feeling a bit thirsty. What do you do?")
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
        
        page9.addOption(Option(optionText: "Close your eyes and eat them.", destinationPage: page53))
        page9.addOption(Option(optionText: "Eww, squirmy things! No way!", destinationPage: page29))
        
        page10.addOption(Option(optionText: "Toxic plants? Oh no! AAAAH!", destinationPage: page11))
        page10.addOption(Option(optionText: "Poke the wound.", destinationPage: page54))
        page10.addOption(Option(optionText: "Wave down a car.", destinationPage: page22))
        
        page11.addOption(Option(optionText: "Ooh, that hurt. Respawn?", destinationPage: page1))
        
        page12.addOption(Option(optionText: "Splat goes the brain. Retry?", destinationPage: page1))
        
        page13.addOption(Option(optionText: "Search for the stream.", destinationPage: page2))
        page13.addOption(Option(optionText: "Cross the street.", destinationPage: page5))
        page13.addOption(Option(optionText: "Wave down a car.", destinationPage: page22))
        
        page14.addOption(Option(optionText: "Go towards the car.", destinationPage: page21))
        page14.addOption(Option(optionText: "Run the other direction.", destinationPage: page23))

        page15.addOption(Option(optionText: "You are roadkill. Restart?", destinationPage: page1))
        
        page16.addOption(Option(optionText: "Take a *yawn* short nap.", destinationPage: page38))
        
        page17.addOption(Option(optionText: "Eat the 'salad'.", destinationPage: page19))
        page17.addOption(Option(optionText: "Eww, vegetables.", destinationPage: page20))
        page17.addOption(Option(optionText: "Look for protein.", destinationPage: page9))
        
        page18.addOption(Option(optionText: "Rest for a *yawn* little while.", destinationPage: page38))
        
        page19.addOption(Option(optionText: "Make a campfire.", destinationPage: page33))
        page19.addOption(Option(optionText: "Search for shelter.", destinationPage: page34))
        
        page20.addOption(Option(optionText: "Look for pizza.", destinationPage: page28))
        page20.addOption(Option(optionText: "Eww, bugs! Eww, nature!", destinationPage: page29))
        page20.addOption(Option(optionText: "Go hunting for meat.", destinationPage: page30))
        
        page21.addOption(Option(optionText: "See if the driver is ok.", destinationPage: page24))
        page21.addOption(Option(optionText: "Steal the cash and run.", destinationPage: page25))
        
        page22.addOption(Option(optionText: "Hop into the car.", destinationPage: page26))
        page22.addOption(Option(optionText: "Wait for someone else.", destinationPage: page27))
        
        page23.addOption(Option(optionText: "Search for the river.", destinationPage: page2))
        page23.addOption(Option(optionText: "Look for shelter.", destinationPage: page34))
        page23.addOption(Option(optionText: "Take another nap.", destinationPage: page42))
        
        page24.addOption(Option(optionText: "Bind the person's wounds.", destinationPage: page31))
        page24.addOption(Option(optionText: "Hop in the car and drive off.", destinationPage: page32))
        
        page25.addOption(Option(optionText: "Count the money.", destinationPage: page55))
        page25.addOption(Option(optionText: "Use the money to start a fire.", destinationPage: page33))
        
        page26.addOption(Option(optionText: "Hang on for dear life.", destinationPage: page43))
        page26.addOption(Option(optionText: "Jump out of the moving car.", destinationPage: page44))
        
        page27.addOption(Option(optionText: "Run for your life.", destinationPage: page45))
        page27.addOption(Option(optionText: "Apologize and get in.", destinationPage: page26))
        page27.addOption(Option(optionText: "Stand your ground.", destinationPage: page46))
        
        page28.addOption(Option(optionText: "Alas, no pizza. Restart?", destinationPage: page1))
        
        page29.addOption(Option(optionText: "Run away as quickly as possible.", destinationPage: page45))
        page29.addOption(Option(optionText: "AAAAAAAAAH! HEEEEELP!", destinationPage: page52))
        
        page30.addOption(Option(optionText: "Eat the squirrel raw.", destinationPage: page47))
        page30.addOption(Option(optionText: "Cook it on a fire.", destinationPage: page48))
        
        page31.addOption(Option(optionText: "Try to wake them up.", destinationPage: page56))
        page31.addOption(Option(optionText: "Leave them there. Find the river.", destinationPage: page2))
        
        page32.addOption(Option(optionText: "Press the left pedal.", destinationPage: page36))
        page32.addOption(Option(optionText: "Step on the right pedal.", destinationPage: page35))
        page32.addOption(Option(optionText: "Push the stick between the seats.", destinationPage: page37))
        
        page33.addOption(Option(optionText: "Sleep right next to the fire.", destinationPage: page57))
        page33.addOption(Option(optionText: "Sleep near the fire.", destinationPage: page57))
        page33.addOption(Option(optionText: "Sprawl out in the cave.", destinationPage: page42))
        page33.addOption(Option(optionText: "Sleep between the fire and cave.", destinationPage: page58))
        
        page34.addOption(Option(optionText: "Build a campfire.", destinationPage: page33))
        page34.addOption(Option(optionText: "Go straight to sleep.", destinationPage: page42))
        
        page35.addOption(Option(optionText: "Head + tree = splat. Reset?", destinationPage: page1))
        
        page36.addOption(Option(optionText: "Press the right pedal.", destinationPage: page35))
        page36.addOption(Option(optionText: "Push the stick between the seats.", destinationPage: page37))
        page36.addOption(Option(optionText: "Leave the car. Help the driver.", destinationPage: page31))
        
        page37.addOption(Option(optionText: "Push the left pedal.", destinationPage: page50))
        page37.addOption(Option(optionText: "Push the right pedal.", destinationPage: page49))
        page37.addOption(Option(optionText: "Do nothing.", destinationPage: page49))
        
        page38.addOption(Option(optionText: "Vomit.", destinationPage: page39))
        page38.addOption(Option(optionText: "Keep it in.", destinationPage: page40))
        
        page39.addOption(Option(optionText: "Look for shelter.", destinationPage: page34))
        page39.addOption(Option(optionText: "Go hunting.", destinationPage: page30))
        page39.addOption(Option(optionText: "Walk in a random direction.", destinationPage: page3))
        
        page40.addOption(Option(optionText: "Stomach explosion. Respawn?", destinationPage: page1))
        
        page41.addOption(Option(optionText: "You died of leeches! Restart?", destinationPage: page1))
        
        page42.addOption(Option(optionText: "You are dead. Reset?", destinationPage: page1))
        
        page43.addOption(Option(optionText: "Car crash, you died. Respawn?", destinationPage: page1))
        
        page44.addOption(Option(optionText: "Pavement... splat. Reset?", destinationPage: page1))
        
        page45.addOption(Option(optionText: "Find a place to stay.", destinationPage: page34))
        page45.addOption(Option(optionText: "Hunt for some food.", destinationPage: page30))
        
        page46.addOption(Option(optionText: "You are crushed. Restart?", destinationPage: page1))
        
        page47.addOption(Option(optionText: "Search for shelter", destinationPage: page34))
        page47.addOption(Option(optionText: "Head back. Drink river water.", destinationPage: page6))
        
        page48.addOption(Option(optionText: "Search for shelter.", destinationPage: page34))
        page48.addOption(Option(optionText: "Build a shelter near the fire.", destinationPage: page59))
        page48.addOption(Option(optionText: "Build a shelter elsewhere.", destinationPage: page51))
        
        page49.addOption(Option(optionText: "Gasoline explosion! Retry?", destinationPage: page1))
        
        page50.addOption(Option(optionText: "You are dead. Respawn?", destinationPage: page1))
        
        page51.addOption(Option(optionText: "Go to sleep in your shelter.", destinationPage: page62))
        page51.addOption(Option(optionText: "Put out the fire, then sleep.", destinationPage: page61))
        
        page52.addOption(Option(optionText: "You died. Reset?", destinationPage: page1))
        
        page53.addOption(Option(optionText: "Blergh! Vomit, now!", destinationPage: page40))
        page53.addOption(Option(optionText: "It's not that bad. *gulp*", destinationPage: page39))
        page53.addOption(Option(optionText: "It's... wiggling... eww!", destinationPage: page63))
        
        page54.addOption(Option(optionText: "You are dead. Retry?", destinationPage: page1))
        
        page55.addOption(Option(optionText: "Leave the cash. Find the river.", destinationPage: page2))
        page55.addOption(Option(optionText: "Use the money to make a fire.", destinationPage: page33))
        page55.addOption(Option(optionText: "Eat the money.", destinationPage: page64))
        
        page56.addOption(Option(optionText: "Murder most foul. Retry?", destinationPage: page1))
        
        page57.addOption(Option(optionText: "Burnt to a crisp. Respawn?", destinationPage: page1))
        
        page58.addOption(Option(optionText: "Devoured by wolves. Retry?", destinationPage: page1))
        
        page59.addOption(Option(optionText: "Go to sleep in your shelter.", destinationPage: page60))
        page59.addOption(Option(optionText: "Sleep outside your shelter", destinationPage: page58))
        
        page60.addOption(Option(optionText: "You are toast. Restart?", destinationPage: page1))
        
        page61.addOption(Option(optionText: "Ah, forget it. Scratch!", destinationPage: page65))
        page61.addOption(Option(optionText: "Find some soothing plants.", destinationPage: page66))
        page61.addOption(Option(optionText: "Run in circles screaming.", destinationPage: page67))
        
        page62.addOption(Option(optionText: "Put pine branches on the fire.", destinationPage: page68))
        page62.addOption(Option(optionText: "Put dry leaves on the fire.", destinationPage: page69))
        page62.addOption(Option(optionText: "Go foraging for food.", destinationPage: page70))
        
        page63.addOption(Option(optionText: "That's one hard rock. Reset?", destinationPage: page1))
        
        page64.addOption(Option(optionText: "Money is not edible. Respawn?", destinationPage: page1))
        
        page65.addOption(Option(optionText: "Skin is necessary. Reset?", destinationPage: page1))
        
        page66.addOption(Option(optionText: "Rub grass on the bites.", destinationPage: page71))
        page66.addOption(Option(optionText: "Smear them with berries.", destinationPage: page72))
        page66.addOption(Option(optionText: "Try the three-leaved vine.", destinationPage: page73))
        page66.addOption(Option(optionText: "Use the shrub's leaves.", destinationPage: page74))
        
        page67.addOption(Option(optionText: "Wolf chew toy. Respawn?", destinationPage: page1))
        
        page68.addOption(Option(optionText: "Make lots of noise.", destinationPage: page75))
        page68.addOption(Option(optionText: "Go searching for people.", destinationPage: page76))
        
        page69.addOption(Option(optionText: "Put pine branches on the fire.", destinationPage: page68))
        page69.addOption(Option(optionText: "Go foraging for food.", destinationPage: page70))
        
        page70.addOption(Option(optionText: "Eat the berries.", destinationPage: page80))
        
        page71.addOption(Option(optionText: "You died. Reset?", destinationPage: page1))
        
        page72.addOption(Option(optionText: "Poison berries. Respawn?", destinationPage: page1))
        
        page73.addOption(Option(optionText: "Asphyxiation. Retry?", destinationPage: page1))
        
        page74.addOption(Option(optionText: "Pine needles and branches.", destinationPage: page68))
        page74.addOption(Option(optionText: "Lots of dry leaves.", destinationPage: page69))
        
        page75.addOption(Option(optionText: "Screaming => dying. Respawn?", destinationPage: page1))
        
        page76.addOption(Option(optionText: "Run towards them!", destinationPage: page77))
        page76.addOption(Option(optionText: "Ignore them.", destinationPage: page78))
        page76.addOption(Option(optionText: "Run the opposite direction.", destinationPage: page79))
        
        page77.addOption(Option(optionText: "Politely ask for help.", destinationPage: page81))
        page77.addOption(Option(optionText: "Grab a stick and attack.", destinationPage: page82))
        
        page78.addOption(Option(optionText: "Search for food.", destinationPage: page70))
        page78.addOption(Option(optionText: "Return to the river", destinationPage: page2))
        
        page79.addOption(Option(optionText: "Go toward the water noises.", destinationPage: page2))
        
        page80.addOption(Option(optionText: "Don't eat the berries. Reset?", destinationPage: page1))

        page81.addOption(Option(optionText: "Thank them and go back.", destinationPage: page84))
        page81.addOption(Option(optionText: "Show them the card.", destinationPage: page83))
        page81.addOption(Option(optionText: "Grab a stick and attack.", destinationPage: page82))
        
        page82.addOption(Option(optionText: "You are dead. Retry?", destinationPage: page1))
        
        page83.addOption(Option(optionText: "Wait in silence.", destinationPage: page88))
        page83.addOption(Option(optionText: "Chat while you wait.", destinationPage: page89))
        page83.addOption(Option(optionText: "Return to your campsite.", destinationPage: page84))
        page83.addOption(Option(optionText: "Try to pickpocket them.", destinationPage: page90))
        
        page84.addOption(Option(optionText: "Attack the wolves.", destinationPage: page85))
        page84.addOption(Option(optionText: "Try to scare them away.", destinationPage: page86))
        page84.addOption(Option(optionText: "Run back towards the people.", destinationPage: page87))
        
        page85.addOption(Option(optionText: "Killed by wolves. Respawn?", destinationPage: page1))
        
        page86.addOption(Option(optionText: "You died painfully. Reset?", destinationPage: page1))
        
        page87.addOption(Option(optionText: "You are dead. Retry?", destinationPage: page1))
        
        page88.addOption(Option(optionText: "Wait for help alone.", destinationPage: page91))
        page88.addOption(Option(optionText: "Go back to your campsite.", destinationPage: page84))
        
        page89.addOption(Option(optionText: "Lead them to your campsite.", destinationPage: page92))
        page89.addOption(Option(optionText: "Keep chatting.", destinationPage: page94))
        page89.addOption(Option(optionText: "You're hungry. Ask for food.", destinationPage: page95))
        page89.addOption(Option(optionText: "What's that in the distance?", destinationPage: page93))
        
        page90.addOption(Option(optionText: "Dead thief. Retry?", destinationPage: page1))
        
        page91.addOption(Option(optionText: "Those wolves... Retry?", destinationPage: page1))
        
        page92.addOption(Option(optionText: "You died painfully. Reset?", destinationPage: page1))
        
        page93.addOption(Option(optionText: "Wave to the rescue party.", destinationPage: page96))
        page93.addOption(Option(optionText: "Grab the crossbow. Shoot them.", destinationPage: page97))
        page93.addOption(Option(optionText: "Run the other direction.", destinationPage: page98))
        
        page94.addOption(Option(optionText: "You are dead. Respawn?", destinationPage: page1))
        
        page95.addOption(Option(optionText: "You are dead. Reset?", destinationPage: page1))
        
        page96.addOption(Option(optionText: "Greet the rescue party", destinationPage: page99))
        
        page97.addOption(Option(optionText: "You are dead. Retry?", destinationPage: page1))
        
        page98.addOption(Option(optionText: "Those rocks... Retry?", destinationPage: page1))
        
        page99.addOption(Option(optionText: "Yay! Rescued! :)", destinationPage: page1))
        
        page100.addOption(Option(optionText: "The end. Play again?", destinationPage: page1))
        
        
        
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

