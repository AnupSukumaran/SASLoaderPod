//
//  ViewController.swift
//  SASLoaderPod
//
//  Created by AnupSukumaran on 04/06/2020.
//  Copyright (c) 2020 AnupSukumaran. All rights reserved.
//

import UIKit
import SASLoaderPod

class ViewController: UIViewController {
   
    var loaderView:LoaderView!

    override func viewDidLoad() {
        super.viewDidLoad()
        loaderView = LoaderView(callOn: self)
        loaderView.startAnimating()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        loaderView.startAnimating()
    }
    
    @IBAction func startIndicator(_ sender: Any) {
        loaderView.startAnimating()
    }
    
    @IBAction func stopIndicator(_ sender: Any) {
        loaderView.stopAnimating()
    }
    
}

