//
//  ViewController.swift
//  OnboardingTask
//
//  Created by Mammadgulu Novruzov on 19.02.25.
//

import UIKit

struct OnboardingItem {
    let title: String
    let subtitle: String
    let image: String
}

class ViewController: UIViewController {
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var subtitleLabel: UILabel!
    @IBOutlet var imageView: UIImageView!
    
    var currentStepIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    let onboardingSteps: [OnboardingItem] = [
        OnboardingItem(title: "Listen to music", subtitle: "Lorem ipsum dolor sit amet,consectetur adipiscing elit.", image: "music"),
        OnboardingItem(title: "Read new books", subtitle: "Lorem ipsum dolor sit amet,consectetur adipiscing elit.", image: "book"),
        OnboardingItem(title: "Just do it", subtitle: "Lorem ipsum dolor sit amet,consectetur adipiscing elit.", image: "sport")
        ]
    
    
    func updateUI() {
        let step = onboardingSteps[currentStepIndex]
        titleLabel.text = step.title
        subtitleLabel.text = step.subtitle
        imageView.image = UIImage(named: step.image)
        
        
        
    }

    @IBAction func nextButton(_ sender: Any) {
        
        if currentStepIndex < onboardingSteps.count - 1 {
            currentStepIndex += 1
            
        } else {
            currentStepIndex = 0
        }
        updateUI()
    }
    
}

