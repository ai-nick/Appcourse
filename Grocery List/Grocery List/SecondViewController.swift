//
//  SecondViewController.swift
//  Grocery List
//
//  Created by Nick Williams on 11/14/16.
//  Copyright © 2016 Nick Williams. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        self.view.endEditing(true)
        
    }

    
    @IBOutlet var textField: UITextField!
    @IBAction func addItem(_ sender: AnyObject) {
        
        var items: [String]
        
        let itemsObject = UserDefaults.standard.object(forKey: "items")
        
        if let tempitems = itemsObject as? [String] {
            items = tempitems
            items.append(textField.text!)
        
        } else {
        
            items = [textField.text!]
        
        }
        
        UserDefaults.standard.set(items, forKey: "items")
        textField.text = ""
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

