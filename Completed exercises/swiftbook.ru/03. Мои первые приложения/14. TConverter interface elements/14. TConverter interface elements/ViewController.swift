//
//  ViewController.swift
//  14. TConverter interface elements
//
//  Created by Rinat Abidullin on 02.02.2020.
//  Copyright © 2020 Rinat Abidullin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var celsiusLabel: UILabel!
    @IBOutlet weak var fahrenheitLabel: UILabel!
    @IBOutlet weak var slider: UISlider! {
        didSet {
            slider.maximumValue = 100
            slider .minimumValue = 0
            slider.value = 0
            
            slider.minimumTrackTintColor = UIColor.white
        }
    }
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        let temperatureCelsius = Int(round(sender.value))
        celsiusLabel.text = "\(temperatureCelsius)ºC"
        
        let temperaturFahrenheit = Int(round((sender.value * 9 / 5) + 32))
        fahrenheitLabel.text = "\(temperaturFahrenheit)ºF"
    }
}

