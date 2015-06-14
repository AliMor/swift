//
//  SecondViewController.swift
//  My To Do List App
//
//  Created by Ali Mortezapour on 14/06/2015.
//  Copyright (c) 2015 DoggyApp. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController,UITextFieldDelegate{

    @IBOutlet var item: UITextField!
    
    @IBAction func AddItem(sender: AnyObject) {
        
        toDoList.append(item.text)
        
        NSUserDefaults.standardUserDefaults().setObject(toDoList, forKey: "toDoList")
        
        item.text = ""
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.item.delegate = self
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
