//
//  Option.swift
//  StoryExample
//
//  Created by RK on 12/16/15.
//  Copyright © 2015 RK. All rights reserved.
//

import UIKit

class Option: NSObject
{
    var optionText : String
    var destinationPage : Page
    
    init(optionText : String, destinationPage: Page)
    {
        self.optionText = optionText
        self.destinationPage = destinationPage
    }
}
