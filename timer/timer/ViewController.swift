//
//  ViewController.swift
//  timer
//
//  Created by User04 on 2018/11/28.
//  Copyright © 2018 User04. All rights reserved.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var timeSaying: UILabel!
    
    //let images=["1","2","3","4"]
    let labels=["Time is money.","Time tries truth.","Time will tell.","Time brings the truth to light.","Time tries friends as fire tries gold.","Time and tide wait for no man.","Time cannot be won again.","Time is a file that wears and makes no noise.","Time stays not the fool's leisure.","Time and I against any two.","Time will tell.","Take time by the forelock."]
    
    var o_hour="00"
    override func viewDidLoad() {
        var i = 0
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        /*var min="00"
        var sec="00"
        */
        
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { (_) in
            let now = Date()
            let formatter1 = DateFormatter()
            formatter1.dateFormat = "HH:mm:ss\nMMM d, yyyy E"
            let time = formatter1.string(from: now)
            self.timeLabel.text="\(time)"
            // After an hour
            
            formatter1.dateFormat = "hh"
            
            let n_hour = formatter1.string(from: now)
            
            if n_hour !=  self.o_hour{
                self.o_hour=n_hour
                self.timeSaying.text=self.labels[i]
                    i+=1
                if i > 11{
                    i=0
                }
            }
        }
        
    }
    
}

