//
//  SecondViewController.swift
//  It's ok to use segue
//
//  Created by Татьяна Кочетова on 12.04.2021.
//

import UIKit

class SecondViewController: UIViewController {
    
    var performData = ""
    
    @IBOutlet var dataLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        dataLabel.text = performData
    }
    
}
