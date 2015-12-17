//
//  Story.swift
//  StoryExample
//
//  Created by Michael Litman on 12/16/15.
//  Copyright © 2015 anna. All rights reserved.
//

import UIKit

class Story: NSObject
{
    var startPage : Page
    init(startPage: Page)
    {
        self.startPage = startPage
    }
}
