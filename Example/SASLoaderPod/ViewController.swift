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
    
   // var loaderView: LoadingChildViewController?
    
    var loaderView:LoaderView!

    override func viewDidLoad() {
        super.viewDidLoad()
        loaderView = LoaderView(callOn: self)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        loaderView.startAnimating()
        //loaderView = LoaderView.setUpLoader(callOn: self)
    }
    
    @IBAction func startIndicator(_ sender: Any) {
        loaderView.startAnimating()
        // loaderView = LoaderView.setUpLoader(callOn: self)
    }
    
    @IBAction func stopIndicator(_ sender: Any) {
        loaderView.stopAnimating()
        //LoaderView.removeChild(removeChildView: loaderView)
    }
    
}

