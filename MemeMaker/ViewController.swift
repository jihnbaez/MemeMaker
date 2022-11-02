//
//  ViewController.swift
//  MemeMaker
//
//  Created by 8h on 11/1/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var topSegmentedController: UISegmentedControl!
    @IBOutlet var bottomSegmentedController: UISegmentedControl!
    @IBOutlet var topCaptionLabel: UILabel!
    @IBOutlet var bottomCaptionLabel: UILabel!
    
    @IBAction func patrick(_ sender: Any) {
        updateLabels()
    }
    
    
    var topChoices: [CaptionOption] = [CaptionOption(emoji: "🤑", caption: "When they say Im not smart"),CaptionOption(emoji: "🤢", caption: "He is gross"), CaptionOption(emoji: "🙃", caption: "You silly goose") ]
    var bottomChoices: [CaptionOption] = [CaptionOption(emoji: "🥳", caption: "Hooray "),CaptionOption(emoji: "😫", caption: "clown"), CaptionOption(emoji: "😠", caption: "Im angry") ]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        topSegmentedController.removeAllSegments()
        
        for choice in topChoices { topSegmentedController.insertSegment(withTitle: choice.emoji, at: topChoices.count, animated: false)
        }
        topSegmentedController.selectedSegmentIndex = 0
    }
        
        func updateLabels() {
            let topSelectedIndex = topSegmentedController.selectedSegmentIndex
            let bottomSelectedIndex = bottomSegmentedController.selectedSegmentIndex
            
            topCaptionLabel.text = topChoices[topSelectedIndex].caption
            bottomCaptionLabel.text = bottomChoices[bottomSelectedIndex].caption
        }
        
    @IBAction func dragTopLabel(_ sender: UIPanGestureRecognizer) {
        if sender.state == .changed { topCaptionLabel.center = sender.location(in: view) }
    }
    
    @IBAction func dragBottomLabel(_ sender: UIPanGestureRecognizer) {
        if sender.state == .changed { bottomCaptionLabel.center = sender.location(in: view) }
    }
   
    }


