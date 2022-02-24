//
//  ViewController.swift
//  showIndicator
//
//  Created by 김경환 on 2022/02/24.
//

import UIKit

class ViewController: BaseViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        showIndicator()
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 5) {
            self.dismissIndicator()
        }
    }
    
    @IBAction func onClickButton1(_ sender: UIButton) {
        alert(message: "button 1")
    }
    
    @IBAction func onClickButton2(_ sender: UIButton) {
        alert(message: "button 2")
    }
    
    @IBAction func onClickButton3(_ sender: UIButton) {
        alert(message: "button 3")
    }
    
    private func alert(message: String) {
        let alert = UIAlertController(title: "Notification", message: message, preferredStyle: .alert)
        let uiAlertAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alert.addAction(uiAlertAction)
        
        self.present(alert, animated: true, completion: nil)
    }
}

