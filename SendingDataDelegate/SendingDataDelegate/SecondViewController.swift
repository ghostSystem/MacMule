//
//  SecondViewController.swift
//  SendingDataDelegate
//
//  Created by Astitv Nagpal on 7/10/18.
//  Copyright © 2018 ghost_system. All rights reserved.
//

import UIKit

protocol MyDataSendingDelegate {
    func sendDataToFirstViewController(myData: String)
}

class SecondViewController: UIViewController {
    
    var delegate: MyDataSendingDelegate? = nil
    
    @IBOutlet weak var dataToSendTextField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func sendDataButtonClicked(_ sender: Any) {
        
        if self.delegate != nil && self.dataToSendTextField.text != nil {
            
            let dataToBeSent = self.dataToSendTextField.text
            self.delegate?.sendDataToFirstViewController(myData: dataToBeSent!)
            dismiss(animated: true, completion: nil)
        }
    }
}
