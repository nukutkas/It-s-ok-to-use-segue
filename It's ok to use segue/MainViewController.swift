//
//  ViewController.swift
//  It's ok to use segue
//
//  Created by Татьяна Кочетова on 08.04.2021.
//

import UIKit

protocol MainViewControllerDelegate {
    func update(text: String)
}

class MainViewController: UIViewController {
    @IBOutlet var dataLabel: UILabel!
    
    var delegate: MainViewControllerDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "performSegue" else { return }
        guard  let secondVC = segue.destination as? SecondViewController else { return }
        secondVC.performData = "Данные получены! \(dataLabel.text ?? "No data" ) "
        
        
    }

}

