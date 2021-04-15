//
//  GrandpaViewController.swift
//  It's ok to use segue
//
//  Created by Татьяна Кочетова on 14.04.2021.
//

import UIKit

class GrandpaViewController: UIViewController {
    
    @IBOutlet var grandpaDataLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    @IBAction func unwind(segue: UIStoryboardSegue) {
        
        guard let mainVC = segue.source as? MainViewController else { return }
        grandpaDataLabel.text = mainVC.dataLabel.text
        
    }

}
