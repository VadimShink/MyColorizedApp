//
//  ViewController.swift
//  MyColorizedApp
//
//  Created by Vadim Shinkarenko on 03.07.2022.
//

import UIKit

class ColorViewController: UIViewController {

    @IBOutlet weak var rgbView: UIView!
    
    @IBOutlet weak var redText: UILabel!
    @IBOutlet weak var greenText: UILabel!
    @IBOutlet weak var blueText: UILabel!
    
    @IBOutlet weak var redValueSlider: UISlider!
    @IBOutlet weak var greenValueSlider: UISlider!
    @IBOutlet weak var blueValueSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rgbView.layer.cornerRadius = 15
        redValueSlider.minimumTrackTintColor = .red
        greenValueSlider.minimumTrackTintColor = .green
        
        setColor()
        redValueSlider.value = 0
        greenValueSlider.value = 0
        blueValueSlider.value = 0
    }
    
    @IBAction func addTextForRedLabel(_ sender: UISlider) {
        setColor()
        redText.text = string(from: sender)
    }
    @IBAction func addTextForGreenLabel(_ sender: UISlider) {
        setColor()
        greenText.text = string(from: sender)
    }
    @IBAction func addTextForBlueLabel(_ sender: UISlider) {
        setColor()
        blueText.text = string(from: sender)
    }
    
    private func string(from slider: UISlider) -> String {
        String(Int(slider.value))
    }
    
    private func setColor() {
        rgbView.backgroundColor = UIColor(red: CGFloat(redValueSlider.value)/255,
                                          green: CGFloat(greenValueSlider.value)/255,
                                          blue: CGFloat(blueValueSlider.value)/255,
                                          alpha: 1)
    }
}

