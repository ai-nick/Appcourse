//
//  ViewController.swift
//  slidertable
//
//  Created by Nick Williams on 11/13/16.
//  Copyright © 2016 Nick Williams. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    internal func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return 50
    }
    
    internal func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")
        cell.textLabel?.text = String(Int(sliderout.value *  20) * (indexPath.row + 1))
        return cell
        
    }

    @IBAction func sliderChanged(_ sender: AnyObject) {
        
        table.reloadData()
        
    }
    @IBOutlet weak var sliderout: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBOutlet weak var table: UITableView!

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

