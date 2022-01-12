//
//  ViewController.swift
//  MyAnmationApp
//
//  Created by Владислав on 11.01.2022.
//

import Spring

class ViewController: UIViewController {
    
    @IBOutlet weak var springView: SpringView!
    @IBOutlet weak var springButton: SpringButton!
    
    @IBOutlet weak var animationLabel: UILabel!
    @IBOutlet weak var curveLabel: UILabel!
    @IBOutlet weak var forceLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var delayLabel: UILabel!
    
    
    private var animation = AboutView.getAnimation()
    private var currentIndex = 0
    
    @IBAction func springButtonPressed(_ sender: SpringButton) {
        if currentIndex < animation.count {
            settingsLabels()
            settingsButton()
            settingsAnimation()
        } else {
            currentIndex = 0
            settingsLabels()
            settingsAnimation()
        }
        
        springView.animate()
    }
    
    private func settingsAnimation() {
        springView.animation = animation[currentIndex].typeOfAnimation
        springView.curve = animation[currentIndex].curve
        
        springView.duration = CGFloat.random(in: 0...2)
        durationLabel.text = "Duration - \(String(format: "%.2f", springView.duration))"
        
        springView.force = CGFloat.random(in: 0...2)
        forceLabel.text = "Force - \(String(format: "%.2f", springView.force))"
        
        springView.delay = CGFloat.random(in: 0...1)
        delayLabel.text = "Delay - \(String(format: "%.2f", springView.delay))"
        
        currentIndex += 1
    }
    
    private func settingsLabels() {
        animationLabel.text = "Animation - \(animation[currentIndex].typeOfAnimation)"
        curveLabel.text = "Curve - \(animation[currentIndex].curve)"
        //forceLabel.text = "Force - \(String(format: "%.2f", springView.force))"
        //durationLabel.text = "Duration - \(String(format: "%.2f", springView.duration))"
        //delayLabel.text = "Delay - \(String(format: "%.2f", springView.delay))"
    }
    
    private func settingsButton() {
        if currentIndex == animation.count - 1  {
            springButton.setTitle(
                "Next animation - \(animation.first?.typeOfAnimation ?? "pop")",
                for: .normal)
        } else {
            springButton.setTitle(
                "Next animation - \(animation[currentIndex + 1].typeOfAnimation)",
                for: .normal)
        }
        
        
    }
}
