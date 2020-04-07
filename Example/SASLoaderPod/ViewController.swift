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
    
    var loaderView: LoadingChildViewController?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        loaderView = LoaderView.setUpLoader(callOn: self)
    }
    
    @IBAction func startIndicator(_ sender: Any) {
         loaderView = LoaderView.setUpLoader(callOn: self)
    }
    
    @IBAction func stopIndicator(_ sender: Any) {
        LoaderView.removeChild(removeChildView: loaderView)
    }
    
}

