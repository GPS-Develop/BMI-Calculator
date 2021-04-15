//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Gurpreet Singh on 2021-04-15.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {

    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float){
        let bmiValue = weight / pow(height, 2)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more Pizzas!", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        }else if (bmiValue < 24.9) {
            bmi = BMI(value: bmiValue, advice: "You are Fit!", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        }else {
            bmi = BMI(value: bmiValue, advice: "Eat less Pizzas!", color: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
        }
        
    }
    
    func getBMIValue() -> Float {
        return bmi?.value ?? 0.0
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "Something Must have gone Wrong"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? .brown
    }
    
}
