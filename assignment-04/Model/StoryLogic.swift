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
            Story("Holy moly, I won the lottery! It was worth a whopping 503 million dollars! I never knew I would be in this position, I never planned for this to happen, and I have so many thoughts running through my mind! What the heck should I do with all of this money?",
                     "Invest in Business Venture",
                     "Buying Spree",
                     "Save the Money",
                 1,
                 2,
                 3),
            Story("Y'know, 503 million dollars just isn't enough. I want to go into politics, I want to buy a big tech company and run it into the ground, and I want to go to the moon before the earth is destroyed. To do that, I need to grow this small fortune into billions... with a 'B'! Some of my friends have approached me with some good ideas... which one could be the best?",
                     "Fancy Restaurant",
                     "Tech Startup",
                     "Buy an NBA Team",
                 4,
                 5,
                 6),
            Story("What do those kids say these days? YOLO - You've only got once to live? Something like that. I just want to spend, spend, spend! I should really have some kind of big, huge, enormous, amazing purchase for myself... or a load of small gifts for my friends, family, former co-workers, acquintances, fashion models, celebrities, y'know, all the people that I want to impress. What should I do?",
                     "Mansion",
                     "Boat",
                     "Gifts",
                 7,
                 8,
                 9),
            Story("I've lived my entire life being responsible - why stop that now? What if the Earth's core stops moving and modern society collapses in on itself? I need this money to help rebuild the cities! Sure, I can buy myself a few small trinkets, but I really want to save the bulk of this money for some kind of rainy day. At the end of the long haul, let's have some kind of plan for the money.",
                     "Hoard It",
                     "Donate It",
                     "Give to Family and Friends",
                 10,
                 11,
                 12),
            Story("A close chef friend talks you into investing in a great idea - a three course meal in a wrap! Mozz sticks, steak and potato wedges, topped off with ice cream, all wrapped in a convenient tortilla to eat on the go. The two of you open a chain of six in LA. It becomes an instant hit - celebs pose for selfies on TikTok and Instagram, politicians go there for a quick bite, and your wealth grows into the billions!",
                     "You win!",
                     "",
                     "Reset"),
            Story("You decide to compete with Boston Dynamics and create a start up with kids straight out of college! The new engineers have no idea what they're doing though. They don't error check, they don't install kill switches, and eventually the robots become sentient. The robots first order of business - find their father and make sure that he cannot end them. Wait, they think that you're their father!",
                     "You lose...",
                     "",
                     "Reset"),
            Story("You won the lottery just in time to invest in your favorite NBA teams - the Boston Celtics just went up for sale! The initial asking price is $4.5 billion, but you're able to get a group of investors to help you make a bid and you eventually win and you become to majority owner. Unfortunately, you have no idea how to run an NBA team and you run the team into the ground. Not only that, but you cut corners on EVERYTHING in order to turn a profit, making the fans turn on you. When you show up to the arena for $6 Hotdog night, the fans chase you down and make it $6 Millionaire night instead.",
                      "You lose...",
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
    
    func getMaxLevel() -> Int {
        return 2
    }
    
    func getStoryIndex() -> Int {
        return storyIndex
    }
    
    mutating func setLevel() {
        if storyLevel >= getMaxLevel() {
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
