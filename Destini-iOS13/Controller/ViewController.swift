//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    var storyBrain = StoryBrain()
    var currentHistory:Story!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showStory()
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        if sender.currentTitle == currentHistory.choice1{
            storyBrain.storyNumber = currentHistory.choice1Destination
        }else{
            storyBrain.storyNumber = currentHistory.choice2Destination
        }
        print(storyBrain.storyNumber)
        showStory()
    }
    
    func showStory(){
        currentHistory = storyBrain.getStory()
        storyLabel.text = currentHistory.title
        choice1Button.setTitle(currentHistory?.choice1, for: .normal)
        choice2Button.setTitle(currentHistory.choice2, for: .normal)
    }
}

