//
//  GrandpaViewController.swift
//  It's ok to use segue
//
//  Created by Татьяна Кочетова on 14.04.2021.
//

import UIKit

class GrandpaViewController: UIViewController {
    
    @IBOutlet var grandpaDataLabel: UILabel!
    
    @IBAction func unwind(segue: UIStoryboardSegue) {
        guard let mainVC = segue.source as? MainViewController else { return }
        grandpaDataLabel.text = "Ура! \(mainVC.dataLabel.text ?? "")"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let mainVC = segue.destination as? MainViewController else { return }
        mainVC.delegate = self
        mainVC.closure = { [weak self] text in
                  self?.grandpaDataLabel.text = text
              }
    }
}
extension GrandpaViewController: MainViewControllerDelegate {
    func update(text: String) {
        grandpaDataLabel.text = text
    }
}
