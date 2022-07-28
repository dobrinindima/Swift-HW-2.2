//
//  ViewController.swift
//  Block HW
//
//  Created by Dmitriy Dobrinin on 19.07.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewColor: UIView!
    // MARK: - Lables
    @IBOutlet weak var redLable: UILabel!
    @IBOutlet weak var greenLable: UILabel!
    @IBOutlet weak var blueLable: UILabel!
    // MARK: - Sliders
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        [redSlider, greenSlider, blueSlider].forEach{
            $0?.value = 1
            $0?.minimumValue = 1
            $0?.maximumValue = 255
        }

        redSlider.minimumTrackTintColor = .red
        redSlider.thumbTintColor = .red
    
        greenSlider.minimumTrackTintColor = .green
        greenSlider.thumbTintColor = .green
    
        blueSlider.minimumTrackTintColor = .blue
        blueSlider.thumbTintColor = .blue
    
        redLable.text = String(Int(redSlider.value))
        greenLable.text = String(Int(greenSlider.value))
        blueLable.text = String(Int(blueSlider.value))
        }
    
    // MARK: - Actions
    @IBAction func redSliderChange(_ sender: Any) {
        redLable.text = String(Int(redSlider.value))
        changeColor()
    }
    @IBAction func greenSliderChange(_ sender: Any) {
        greenLable.text = String(Int(greenSlider.value))
        changeColor()
    }
    @IBAction func blueSliderChange(_ sender: Any) {
        blueLable.text = String(Int(blueSlider.value))
        changeColor()
    }
    
    private func changeColor() {
        viewColor.backgroundColor = UIColor(red: CGFloat(redSlider.value/255), green: CGFloat(greenSlider.value/255), blue: CGFloat(blueSlider.value/255), alpha: 1)
    }
}



