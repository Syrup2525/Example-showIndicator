//
//  BaseViewController.swift
//  showIndicator
//
//  Created by 김경환 on 2022/02/24.
//

import UIKit

class BaseViewController: UIViewController {
    final var indicator: UIActivityIndicatorView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        initIndicator()
    }
    
    final public func initIndicator() {
        indicator = UIActivityIndicatorView()
        indicator.frame = CGRect(x: 0, y: 0, width: self.view.bounds.width, height: self.view.bounds.height)
        indicator.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.5)
        indicator.hidesWhenStopped = false
        indicator.style = .medium
        indicator.startAnimating()
        self.view.addSubview(indicator)
        indicator.isHidden = true
    }
    
    final public func showIndicator() {
        indicator.isHidden = false
    }
    
    final public func dismissIndicator() {
        indicator.isHidden = true
    }
}
