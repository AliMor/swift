//
//  ViewController.swift
//  controlling Keyboard
//
//  Created by Ali Mortezapour on 25/05/2015.
//  Copyright (c) 2015 DoggyApp. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var inputTxt: UITextField!
    
    @IBOutlet var lblText: UILabel!
    
    @IBOutlet var inputTxt2: UITextField!
    
    @IBAction func updateLabel(sender: AnyObject) {
        
        lblText.text = inputTxt.text
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.inputTxt.delegate = self
        self.inputTxt2.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        
        self.view.endEditing(true)
        
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
    
        textField.resignFirstResponder()
        
        return true
        
    }
    
}

