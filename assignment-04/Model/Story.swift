//
//  Story.swift
//  assignment-04
//
//  Created by Dave Regg on 2/7/23.
//

import Foundation

struct Story {
    
    init(_ story: String, _ o_one:String, _ o_two: String, _ o_three: String) {
        story_text = story
        option_one = o_one
        option_two = o_two
        option_three = o_three
    }
    
    var story_text: String
    var option_one: String
    var option_two: String
    var option_three: String
    
}
