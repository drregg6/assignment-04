//
//  Story.swift
//  assignment-04
//
//  Created by Dave Regg on 2/7/23.
//

import Foundation

struct Story {
    
    init(_ story: String, _ o_one: String, _ o_two: String, _ o_three: String, _ one_i: Int = 0, _ two_i: Int = 0, _ three_i: Int = 0) {
        story_text = story
        option_one = o_one
        option_two = o_two
        option_three = o_three
        o_one_i = one_i
        o_two_i = two_i
        o_three_i = three_i
    }
    
    var story_text: String
    var option_one: String
    var option_two: String
    var option_three: String
    var o_one_i: Int
    var o_two_i: Int
    var o_three_i: Int
}
