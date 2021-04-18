//
//  SecondViewController.swift
//  It's ok to use segue
//
//  Created by Татьяна Кочетова on 12.04.2021.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet var dataLabel: UILabel!
    
    var performData = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        dataLabel.text = performData
    }
    
    @IBAction func backAction() {
        dismiss(animated: true)
    }
}
