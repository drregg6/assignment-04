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
            Story("You've always wanted to own a mansion. Not just any mansion, but a castle! With a moat! And old stone, and stain glassed windows, all that beautiful stuff! You buy an old, beat up castle for a few million in Ireland. You need more money to renovate it. You have great ideas for it - grounds for a yearly Renaissance Fair, a Triwizard Tournament, so many possibilities! Six years later, the renos are done and you finally move in. But that moat? It came with crocodiles, one of which sniffed you ate and ate you as your were moving in.",
                      "You lose...",
                      "",
                      "Reset"),
            Story("You decide to buy an extravagant yacht! You hire some friends as personal chefs, some great cleaners to maintain the yacht, and an overall professional and responsible staff to sail around the world. You live on the yacht going from exotic location to exotic location and spending as much time there as you want. You work a bit as a freelance programmer and zoom call family back home when you dock, but the bulk of your time is exploring new countries, meeting new people, and overall having an exquisite life.",
                      "You win!",
                      "",
                      "Reset"),
            Story("You've decided to share your wealth with your childhood friends and family. You buy modest houses in the cities and suburbs that they all love. You buy some reliable cars for them, maybe a Segway here or there. But the freeloaders were never happy. With each house came a plea of paying for the mortgage, or helping with various other bills. They didn't want to work anymore. After spending $400 million of your fortune, you decided enough was enough and cut them out of your life and spend the rest of your days alone.",
                      "You win? Kind of?",
                      "",
                      "Reset"),
            Story("You don't trust banks, so little by little every week you take out some of your money in cash. Within a year, you have hundreds of thousands of $100 bills in your house. Like a dragon, you spend days at a time laying in your hills of cash. Once the bulk of your money was out of the bank, you stopped leaving your house entirely, not trusting a single soul to see your massive wealth laying in your home. You live the rest of your life as a secluded hermit, stinking of BO and old cash.",
                      "You win! But at what cost...?",
                      "",
                      "Reset"),
            Story("Whenever you read about those billionaires hoarding their money, you never understood why they didn't donate the cash to charity. With just a few billions, they end climate change! You don't have that kind of money, but a few million could go a long way. A charity you've always read about was \"Earth Good\", an environmental charity. When you donate $250 million to them though, they end up being a radical terrorist group - to them, the only hope for Earth is to destroy mankind - and with their new donation, that's what they did.",
                      "You lose...",
                      "",
                      "Reset"),
            Story("You're such a responsible person - you put aside a million or so and invest in the stock market. Then you buy a couple things for yourself, nothing flashy, just a new car and a kitchen reno. The rest will go to your children after you pass. Little did you know that the children just wanted it now! You realize you should have spent more time with your children rather than on the computer - they felt no remorse when they burned you alive to collect the cash waiting for them in the bank.",
                      "You lose...",
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
