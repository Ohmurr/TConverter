//
//  ViewController.swift
//  TConverter
//
//  Created by Anna on 19.11.2021.
//

import UIKit

class ViewController: UIViewController {

    // Anna
    @IBOutlet weak var cenliusLable: UILabel!
    @IBOutlet weak var fahrenheLable: UILabel!
    @IBOutlet weak var slider: UISlider! {
        didSet {
            slider.maximumValue = 100
            slider.minimumValue = 0
            slider.value = 0
        }
   }
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        let temperatureCelsius = Int(round(sender.value))
        cenliusLable.text = "\(temperatureCelsius)ºC"
        let fahrenheitTemperature = Int(round((sender.value * 9 / 5) + 32))
        fahrenheLable.text = "\(fahrenheitTemperature)ºF"
    }
}



