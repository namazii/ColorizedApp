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
    
    private var redValue = Float()
    private var greenValue = Float()
    private var blueValue = Float()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorValue()
        colorChangeView(red: redValue, green: greenValue, blue: blueValue)
        labelValueText()
    }
    
    @IBAction func redSliderAction() {
        labelValueText()
        colorValue()
        colorChangeView(red: redValue, green: greenValue, blue: blueValue)
    }
    @IBAction func greenSliderAction() {
        labelValueText()
        colorValue()
        colorChangeView(red: redValue, green: greenValue, blue: blueValue)
    }
    @IBAction func blueSliderAction() {
        labelValueText()
        colorValue()
        colorChangeView(red: redValue, green: greenValue, blue: blueValue)
    }
    
    
    private func colorChangeView (red: Float, green: Float, blue: Float) {
    colorСhangingView.backgroundColor = UIColor(
        red: CGFloat(redValue),
        green: CGFloat(greenValue),
        blue: CGFloat(blueValue), alpha: 1.0
    )
    }
    private func colorValue() {
        redValue = Float(redSliderOutlet.value)
        greenValue = Float(greenSliderOutlet.value)
        blueValue = Float(blueSliderOutlet.value)
    }
    private func labelValueText() {
        redLabelValue.text = String(round(redSliderOutlet.value * 10) / 10)
        greenLabelValue.text = String(round(greenSliderOutlet.value * 10) / 10)
        blueLabelValue.text = String(round(blueSliderOutlet.value * 10) / 10)
    }
}

