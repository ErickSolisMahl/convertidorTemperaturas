//
//  ViewController.swift
//  convertidorTemperatura
//
//  Created by Erick Solis Mahl on 16/08/21.
//

import UIKit

class ViewController: UIViewController {
    let temperatureConverter = TemperatureConverter()
    let temperatureConverterService = TemperatureConverterService()
    @IBOutlet weak var celsiusTextField: UITextField!
    @IBOutlet weak var fahrenheitTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func convertir(_sender: UIButton) {
        fahrenheitTextField.text = ""
                
        if let celciusValue = celsiusTextField.text {
            if !celciusValue.isEmpty {
                /*let fahrenheitValue = temperatureConverter.convert(temperature: Temperature(value: Float16(celciusValue)!, unit: Temperature.Unit.CELSIUS), unitToConvert: Temperature.Unit.FAHRENHEIT)
                print("Farenheit" + String(fahrenheitValue.value))
                fahrenheitTextField.text = String(fahrenheitValue.value)*/
                
                temperatureConverterService.convertToFahrenheit(temperature: Temperature(value: Float16(celciusValue)!, unit: Temperature.Unit.CELSIUS))  {
                    [weak self] (fahrenheitTemperature) in
                            DispatchQueue.main.async {
                                self?.fahrenheitTextField.text = String(fahrenheitTemperature.value)
                            }
                                    
                }
                
            } else {
                print("Celcius value is empty")
            }
                
        }
        
    }
    
}

