//
//  ViewController.swift
//  Hackathon
//
//  Created by Linglong Wang on 7/5/17.
//  Copyright © 2017 Connar Wang. All rights reserved.
//

import UIKit

//import GoogleMaps

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Network.getDirection()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

