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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let mainVC = segue.destination as? MainViewController else { return }
        mainVC.delegate = self
    }
}
extension GrandpaViewController: MainViewControllerDelegate {
    func update(text: String) {
        grandpaDataLabel.text = text
    }
}
