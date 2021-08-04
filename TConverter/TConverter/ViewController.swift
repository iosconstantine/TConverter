//
//  ViewController.swift
//  TConverter
//
//  Created by KONSTANTIN TISHCHENKO on 05.08.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var celsiusLabel: UILabel!
    @IBOutlet weak var slider: UISlider! {
        didSet { // при инициализации выполнится этот блок
            slider.minimumValue = 0
            slider.maximumValue = 100
            slider.value = 0
        }
    }
    
    @IBOutlet weak var fahrenheitLabel: UILabel!
    
    @IBAction func sliderAction(_ sender: UISlider) {
        let temperatureCelsius = Int(sender.value)
        celsiusLabel.text = "\(temperatureCelsius)ºC"
        
        let temperatureFahrenheit = Int((temperatureCelsius * 9 / 5) + 32)
        fahrenheitLabel.text = "\(temperatureFahrenheit)ºF"
        
    }
}

