//
//  Model.swift
//  ColorAppSwiftUI
//
//  Created by Valya on 4.04.22.
//

import Foundation
import UIKit
import SwiftUI

struct ColorSlider: View {
    
    @Binding var value: Double
    
    var body: some View {
            Text("0")
            Slider(value: $value, in: 0...255, step: 1)
            Text("255")
    }
    
}

struct CustomColor {
    var red: Double
    var green: Double
    var blue: Double
    var textRed: String = "" {
        didSet {
            if !check(value: textRed) {
                textRed = ""
            } else {
                red = Double(textRed)!
            }
        }
    }
    var textGreen: String = "" {
        didSet {
            if !check(value: textGreen) {
                textGreen = ""
            } else {
                green = Double(textGreen)!
            }
        }
    }
    var textBlue: String = "" {
        didSet {
            if !check(value: textBlue) {
                textBlue = ""
            } else {
                blue = Double(textBlue)!
            }
        }
    }
    
    private func check(value: String) -> Bool {
        if let value = Double(value),
        value <= Double(255) && value >= Double(0) {
            return true
        } else {
            return false
        }
    }
    
}
