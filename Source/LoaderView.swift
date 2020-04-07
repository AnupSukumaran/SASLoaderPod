//
//  LoaderView.swift
//  OverlayActivityIndicator
//
//  Created by Manu Puthoor on 06/04/20.
//  Copyright © 2020 Manu Puthoor. All rights reserved.
//

import UIKit

public class LoaderView: UIStoryboard {
    
    public static func mainStoryboard() -> UIStoryboard {
        let bundle = Bundle(identifier: "org.cocoapods.SASLoaderPod")
        return UIStoryboard(name: "Main", bundle: bundle)
    }

    public static func loadingChildViewController() -> LoadingChildViewController? {
        return mainStoryboard().instantiateViewController(withIdentifier: "LoadingChildViewController") as? LoadingChildViewController
    }
    
    public static func setUpLoader(callOn: UIViewController, type: NVActivityIndicatorType = .ballRotate,color: UIColor = .red,padding: CGFloat = 5) -> LoadingChildViewController? {
        guard let vc = self.loadingChildViewController() else {return nil}
        vc.modalPresentationStyle = .fullScreen
        vc.type = type
        vc.color = color
        vc.padding = padding
        callOn.view.addSubview(vc.view)
        callOn.addChild(vc)
        vc.didMove(toParent:  callOn)
        vc.view.frame = callOn.view.frame
        return vc
    }
    
    public static func removeChild(removeChildView: UIViewController?) {
        guard let main = removeChildView else {return}
        main.willMove(toParent: nil)
        main.view.removeFromSuperview()
        main.removeFromParent()
    }
    
    public static func activityOnAlert(callOn: UIViewController, loadingMsg: String = "Please wait ...") {
        let alert = UIAlertController(title: nil, message: loadingMsg, preferredStyle: .alert)

        let loadingIndicator = UIActivityIndicatorView(frame: CGRect(x: 10, y: 5, width: 50, height: 50))
        loadingIndicator.hidesWhenStopped = true
      
    
        if #available(iOS 13.0, *) {
            loadingIndicator.style = .medium
        } else {
            loadingIndicator.style = UIActivityIndicatorView.Style.gray
        }
    
        loadingIndicator.startAnimating();
        
        alert.view.addSubview(loadingIndicator)
        
        callOn.present(alert, animated: true, completion: nil)
    }
    
   public static func dismissActivityOnAlert(removeFrom: UIViewController) {
        removeFrom.dismiss(animated: true, completion: nil)
    }
}
