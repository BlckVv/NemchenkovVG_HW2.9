//
//  ViewController.swift
//  NemchenkovVG_HW2.9
//
//  Created by Владимир Немченков on 04.08.2021.
//

import Spring

class AnimationViewController: UIViewController {
    
    @IBOutlet weak var animationView: SpringView!
    @IBOutlet weak var infoLabel: SpringLabel!

    var animationName = "Slide Left"
    
    @IBAction func runSpringButton(_ sender: SpringButton) {
        
        switch animationName {
        case "Slide Left":
            animationView.animation = "slideLeft"
            animationView.curve = "easeInOut"
            animationView.force = 2
            animationView.duration = 1
            animationView.delay = 0.3
            
            animationView.animate()
            
            animationName = "Slide Right"
            
            infoLabel.text = animationInfo()
            
            sender.setTitle("Run Slide Right Animation", for: .normal)
            
        case "Slide Right":
            animationView.animation = "slideRight"
            animationView.curve = "easeOut"
            animationView.force = 3
            animationView.duration = 2
            animationView.delay = 0.3
            
            animationView.animate()
            
            animationName = "Slide Down"
            
            infoLabel.text = animationInfo()
            
            sender.setTitle("Run Slide Down Animation", for: .normal)
        
        case "Slide Down":
            animationView.animation = "slideDown"
            animationView.curve = "easeIn"
            animationView.force = 4
            animationView.duration = 3
            animationView.delay = 0.3
            
            animationView.animate()
            
            animationName = "Slide Up"
            
            infoLabel.text = animationInfo()
            
            sender.setTitle("Run Slide Up Animation", for: .normal)

        case "Slide Up":
            animationView.animation = "slideUp"
            animationView.curve = "spring"
            animationView.force = 5
            animationView.duration = 4
            animationView.delay = 0.3
            
            animationView.animate()
            
            animationName = "Slide Left"
            
            infoLabel.text = animationInfo()
            
            sender.setTitle("Run Slide Left Animation", for: .normal)

        default:
            break
        }
    }
    
    func animationInfo() -> String {
        """
            Name: \(animationView.animation)
            Curve: \(animationView.curve)
            Force: \(animationView.force)
            Duration: \(animationView.duration)
            Delay: \(animationView.delay)
        """

    }
}
