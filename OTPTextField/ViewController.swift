//
//  ViewController.swift
//  OTPTextField
//
//  Created by Arnab on 06/04/18.
//  Copyright © 2018 Arnab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var textFields: [UITextField]!
    @IBOutlet var printLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.viewWithTag(1)?.becomeFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func editingChanged(_ sender: UITextField) {
        if let nextTextField = self.view.viewWithTag(sender.tag + 1) {
            nextTextField.becomeFirstResponder()
        } else {
            sender.resignFirstResponder()
            
            var fullText = ""
            self.textFields.forEach { (singleTextField) in
                fullText.append(singleTextField.text!)
            }
            printLabel.text = "You entered: " + fullText
        }
    }

}

