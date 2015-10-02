//
//  ViewController.swift
//  ShoeConverter
//
//  Created by Edgard Maciel on 10/2/15.
//  Copyright © 2015 Edgard Maciel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var mensShoeSizeTextField: UITextField!

    @IBOutlet weak var mensConvertedShoeSizeLabel: UILabel!
    
    @IBOutlet weak var womensShoeSizeTextField: UITextField!
    
    @IBOutlet weak var womensConvertedShoeSizeLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButtonPressed(sender: UIButton) {
        
        let numberFromTextField = Int(mensShoeSizeTextField.text!)!
        let conversionConstant = 30
        mensConvertedShoeSizeLabel.hidden=false
        let stringWhitUpdatedShoeSize = "\(numberFromTextField + conversionConstant)" + " In European side"
        mensConvertedShoeSizeLabel.text = stringWhitUpdatedShoeSize
        mensShoeSizeTextField.text = ""
        mensShoeSizeTextField.resignFirstResponder()
    }

    @IBAction func convertWomensShoeSizeButtonPressed(sender: UIButton) {
        
        
        var sizeFromTextField = Double(womensShoeSizeTextField.text!)!
        
        let womensConversionConstant = 30.5
        womensConvertedShoeSizeLabel.hidden=false
        womensConvertedShoeSizeLabel.text="\(sizeFromTextField + womensConversionConstant )" + " in European shoe size"
        womensShoeSizeTextField.text = ""
        womensShoeSizeTextField.resignFirstResponder()
    }
}

