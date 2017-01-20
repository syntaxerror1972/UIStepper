//
//  ViewController.swift
//  UIStepper
//
//  Created by Shrawan Shinde on 21/01/17.
//  Copyright © 2017 Shrawan Shinde. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var stepperValue = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        
        stepperValue.frame = CGRect(x: 100, y: 200, width: 200, height: 20)
        view.addSubview(stepperValue)
        stepperValue.text = "Value of UIStepper : 0"

        
        var stepperView = UIStepper (frame:CGRect(x: 110, y: 250, width: 0, height: 0))
        stepperView.wraps = true
        stepperView.autorepeat = true
        stepperView.maximumValue = 10
        stepperView.addTarget(self, action: #selector(stepperValueChanged), for: UIControlEvents.valueChanged)
        self.view.addSubview(stepperView)
        
    }
    
    func stepperValueChanged(sender: UIStepper) {
        stepperValue.text = "Value of UIStepper : "+Int(sender.value).description
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

