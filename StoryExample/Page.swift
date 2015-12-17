//
//  Page.swift
//  StoryExample
//
//  Created by Michael Litman on 12/16/15.
//  Copyright © 2015 anna. All rights reserved.
//

import UIKit

class Page: NSObject
{
    var pageText : String
    var options : [Option]!
    
    init(pageText: String)
    {
        self.pageText = pageText
        self.options = [Option]()
    }
    
    func addOption(option: Option)
    {
        self.options.append(option)
    }
}
