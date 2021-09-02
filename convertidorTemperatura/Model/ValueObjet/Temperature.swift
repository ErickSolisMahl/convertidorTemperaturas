//
//  Temperature.swift
//  convertidorTemperatura
//
//  Created by Erick Solis Mahl on 18/08/21.
//

import Foundation

public class Temperature:Codable {
    public let value : Float16
    public let unit: Unit
    
    public init(value: Float16, unit: Unit) {
        self.value = value
        self.unit = unit
    }

    public enum Unit:String, Codable {
        case FAHRENHEIT
        case CELSIUS
    }
}
