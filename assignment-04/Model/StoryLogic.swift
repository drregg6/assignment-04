//
//  StoryLogic.swift
//  assignment-04
//
//  Created by Dave Regg on 2/7/23.
//
// A new label based on whether story is over or not
// Reset button to reset CYO adventure

import Foundation

struct StoryLogic {
    var storyLevel = 0
    var storyIndex = 0
    
    let story = [
            Story("Won The Lotto",
                     "Invest in Business Venture",
                     "Buying Spree",
                     "Save the Money",
                 1,
                 2,
                 3),
            Story("Invest in Business Venture",
                     "Fancy Restaurant",
                     "Tech Startup",
                     "Buy an NBA Team",
                 4,
                 5,
                 6),
            Story("Buying Spree",
                     "Mansion",
                     "Boat",
                     "Gifts",
                 7,
                 8,
                 9),
            Story("Save the Money",
                     "Hoard It",
                     "Donate It",
                     "Give to Family and Friends",
                 10,
                 11,
                 12),
            Story("Fancy Restaurant",
                     "",
                     "",
                     "Reset"),
            Story("Tech Startup",
                     "",
                     "",
                     "Reset"),
            Story("Buy an NBA Team",
                      "",
                      "",
                      "Reset"),
            Story("Mansion",
                      "",
                      "",
                      "Reset"),
            Story("Boat",
                      "",
                      "",
                      "Reset"),
            Story("Gifts for Friends",
                      "",
                      "",
                      "Reset"),
            Story("Hoard It",
                      "",
                      "",
                      "Reset"),
            Story("Donate It",
                      "",
                      "",
                      "Reset"),
            Story("Give to Family and Friends",
                      "",
                      "",
                      "Reset")
        ]
    
    func getLevel() -> Int {
        return storyLevel
    }
    
    func getStoryIndex() -> Int {
        return storyIndex
    }
    
    mutating func setLevel() {
        if storyLevel >= 2 {
            storyLevel = 0
        } else {
            storyLevel += 1
        }
    }
    
    mutating func setStoryIndex(o: Int) {
        storyIndex = o
    }
    
    mutating func getStoryText(o: Int) -> String {
        return story[o].story_text
    }
    
    func getOptionOne(o: Int) -> String {
        return story[o].option_one
    }
    
    func getOptionTwo(o: Int) -> String {
        return story[o].option_two
    }
    
    func getOptionThree(o: Int) -> String {
        return story[o].option_three
    }
    
    func getImageName(o: Int) -> Int {
        return o
    }
    
    mutating func getOptionIndex(str: String) -> Int {
        if str == story[storyIndex].option_one {
            storyIndex = story[storyIndex].o_one_i
        } else if str == story[storyIndex].option_two {
            storyIndex = story[storyIndex].o_two_i
        } else {
            storyIndex = story[storyIndex].o_three_i
        }
        
        return storyIndex
    }
}
