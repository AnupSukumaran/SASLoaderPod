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
   @IBOutlet weak var baseView: UIView!
    
    var loaderView:LoaderView!
    var indicator: NVActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let frame = CGRect(x: 0, y: 0, width: baseView.frame.width, height: baseView.frame.height)
        indicator = NVActivityIndicatorView(frame: frame, type: .ballSpinFadeLoader, color: .red, padding: 5)
        baseView.addSubview(indicator)
        
        loaderView = LoaderView(callOn: self)
        loaderView.startAnimating()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        loaderView.startAnimating()
        indicator.startAnimating()
    }
    
    @IBAction func startIndicator(_ sender: Any) {
        loaderView.startAnimating()
        indicator.startAnimating()
    }
    
    @IBAction func stopIndicator(_ sender: Any) {
        loaderView.stopAnimating()
        indicator.stopAnimating()
    }
    
}

