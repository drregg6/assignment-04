//
//  ViewController.swift
//  assignment-04
//
//  Created by Dave Regg on 2/7/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var background: UIImageView!
    @IBOutlet weak var optionOne: UIButton!
    @IBOutlet weak var optionTwo: UIButton!
    @IBOutlet weak var optionThree: UIButton!
    @IBOutlet weak var storyLabel: UILabel!
    
    var storyLogic = StoryLogic()
    var optionText: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }

    @IBAction func optionPress(_ sender: UIButton) {
        let optionText = sender.titleLabel!.text!
        let index = storyLogic.getOptionIndex(str: optionText)

        storyLogic.setLevel()
        if (storyLogic.getLevel() > 2) {
            updateUI(0)
        } else {
            updateUI(index)
        }
    }
    
    func updateUI(_ i: Int = 0) {
        storyLogic.setStoryIndex(o: i)
        
        if (storyLogic.getLevel() > 2) {
            optionOne.isHidden = true
            optionTwo.isHidden = true
        } else {
            optionOne.isHidden = false
            optionTwo.isHidden = false
        }
        
        // update text
        storyLabel.text = storyLogic.getStoryText(o: i)
        optionOne.setTitle(storyLogic.getOptionOne(o: i), for: .normal)
        optionTwo.setTitle(storyLogic.getOptionTwo(o: i), for: .normal)
        optionThree.setTitle(storyLogic.getOptionThree(o: i), for: .normal)
        
        // and background
        background.image = UIImage(named: String(i))
    }
    
}

