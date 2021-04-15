//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Gurpreet Singh on 2021-04-15.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var bmiValue: String?
    var advice: String?
    var color: UIColor?
    
    
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var backgroundView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        backgroundView.backgroundColor = color
        
    }
    
    @IBAction func recalculatePressesd(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
