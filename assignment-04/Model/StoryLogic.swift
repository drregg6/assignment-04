//
//  StoryLogic.swift
//  assignment-04
//
//  Created by Dave Regg on 2/7/23.
//

import Foundation

struct StoryLogic {
    var storyIndex : Int = 0
    
    let story = [
            Story("Won The Lotto",
                     "Invest in Business Venture",
                     "Buying Spree",
                     "Save the Money"),
            Story("Invest in Business Venture",
                     "Fancy Restaurant",
                     "Tech Startup",
                     "Buy an NBA Team"),
            Story("Buying Spree",
                     "Mansion",
                     "Boat",
                     "Gifts"),
            Story("Save the Money",
                     "Hoard It",
                     "Donate It",
                     "Give to Family and Friends"),
            Story("Fancy Restaurant",
                     "Story Story",
                     "nil",
                     "nil"),
            Story("Tech Startup",
                     "Story Story",
                     "nil",
                     "nil"),
            Story("Buy an NBA Team",
                      "Story Story",
                      "nil",
                      "nil"),
            Story("Mansion",
                      "Story Story",
                      "nil",
                      "nil"),
            Story("Boat",
                      "Story Story",
                      "nil",
                      "nil"),
            Story("Gifts for Friends",
                      "Story Story",
                      "nil",
                      "nil"),
            Story("Hoard It",
                      "Story Story",
                      "nil",
                      "nil"),
            Story("Donate It",
                      "Story Story",
                      "nil",
                      "nil"),
            Story("Give to Family and Friends",
                      "Story Story",
                      "nil",
                      "nil")
        ]
    
    mutating func increaseIndex() {
        if storyIndex < story.count - 1 {
            storyIndex += 1
        } else {
            storyIndex = 0
        }
    }
    
    func getNextPage() -> String {
        return story[storyIndex].story_text
    }
    
    func getOptionOne() -> String {
        return story[storyIndex].option_one
    }
    
    func getOptionTwo() -> String {
        return story[storyIndex].option_two
    }
    
    func getOptionThree() -> String {
        return story[storyIndex].option_three
    }
    
    func getImageName() -> Int {
        return storyIndex + 1
    }
}
