//
//  ViewController.swift
//  animation
//
//  Created by Nick Williams on 11/21/16.
//  Copyright © 2016 Nick Williams. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func fadeIn(_ sender: Any) {
        image.alpha = 0
        UIView.animate(withDuration: 1, animations: {
            self.image.alpha = 1})
    }
    @IBAction func slideIn(_ sender: AnyObject) {
        image.center = CGPoint(x: image.center.x - 500, y: image.center.y)
        UIView.animate(withDuration: 2) {
            self.image.center = CGPoint(x: self.image.center.x + 500, y: self.image.center.y)
            
        }
    }
    @IBAction func grow(_ sender: AnyObject) {
        image.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        image.center = CGPoint(x: image.center.x, y: image.center.y)
        UIView.animate(withDuration: 1) {
            self.image.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
            self.image.center = CGPoint(x: self.image.center.x+100, y: self.image.center.y + 100)
        }
    }
    @IBOutlet var buttonText: UIButton!
    @IBOutlet var image: UIImageView!
        var counter = 1
        var isPlaying = false
    
        var timer = Timer()
    
    func playGif() {
        image.image = UIImage(named: "frame_\(counter)_delay-0.1s.gif")
        counter += 1
        if counter == 12 {
            counter = 0
        }
    }
    @IBAction func next(_ sender: AnyObject) {
        if isPlaying {
            timer.invalidate()
            buttonText.setTitle("Play gif", for: [])
            isPlaying = false
        } else {
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(ViewController.playGif), userInfo: nil, repeats: true)
            buttonText.setTitle("Stop gif", for: [])
            isPlaying = true
        }

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

