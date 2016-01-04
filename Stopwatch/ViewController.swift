//
//  ViewController.swift
//  Stopwatch
//
//  Created by Guillaume on 03/01/16.
//  Copyright © 2016 Guillaume. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var time = 0
    var timer = NSTimer()
    func updateTime(){
        time++
        text.text = String(time)
    }
    
    @IBAction func play(sender: AnyObject) {
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: "updateTime", userInfo: nil, repeats: true)
    }
    
    @IBAction func pause(sender: AnyObject) {
        timer.invalidate()
    }
    
    @IBAction func rewind(sender: AnyObject) {
        time = 0
    }
    
    @IBAction func stop(sender: AnyObject) {
        time = 0
        text.text = "0"
        timer.invalidate()
    }
    

    @IBOutlet var text: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

