//
//  ViewController.swift
//  timerApp
//
//  Created by Mahmut Şenbek on 14.09.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var labelText: UILabel!
    
    var timer = Timer()
    
    var counter = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        counter = 10
        labelText.text = "Time:\(counter)"
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(time), userInfo: nil, repeats: true)
    }
    
    @objc func time() {
        
        labelText.text = "Time: \(counter)"
        counter -= 1
        
        if counter == 0 {
            timer.invalidate()
            labelText.text = " Time is Over You Fucked Up"
            
        }
        
    }

}

