//
//  FirstViewController.swift
//  SendingDataDelegate
//
//  Created by Astitv Nagpal on 7/10/18.
//  Copyright © 2018 ghost_system. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, MyDataSendingDelegate {
    
    @IBOutlet weak var receivedDataLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // Delegate Method
    func sendDataToFirstViewController(myData: String) {
        self.receivedDataLabel.text = myData
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "getDataSegue" {
            let secondVC: SecondViewController = segue.destination as! SecondViewController
            secondVC.delegate = self
        }
    }
    

}

