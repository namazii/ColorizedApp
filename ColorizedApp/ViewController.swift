//
//  ViewController.swift
//  ColorizedApp
//
//  Created by Назар Ткаченко on 04.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var colorСhangingView: UIView!
    
    @IBOutlet weak var redLabelValue: UILabel!
    @IBOutlet weak var greenLabelValue: UILabel!
    @IBOutlet weak var blueLabelValue: UILabel!
    
    @IBOutlet weak var redSliderOutlet: UISlider!
    @IBOutlet weak var greenSliderOutlet: UISlider!
    @IBOutlet weak var blueSliderOutlet: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLabelValue.text = String(round(redSliderOutlet.value * 10) / 10)
        greenLabelValue.text = String(round(greenSliderOutlet.value * 10) / 10)
        blueLabelValue.text = String(round(blueSliderOutlet.value * 10) / 10)
    }
    
    @IBAction func redSliderAction() {
        redLabelValue.text = String(round(redSliderOutlet.value * 10) / 10)
    }
    @IBAction func greenSliderAction() {
        greenLabelValue.text = String(round(greenSliderOutlet.value * 10) / 10)
    }
    @IBAction func blueSliderAction() {
        blueLabelValue.text = String(round(blueSliderOutlet.value * 10) / 10)
    }
    

}

