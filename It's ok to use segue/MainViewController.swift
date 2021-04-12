//
//  ViewController.swift
//  It's ok to use segue
//
//  Created by Татьяна Кочетова on 08.04.2021.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "performSegue" else { return }
        guard  let destination = segue.destination as? SecondViewController else { return }
        destination.performData = "Браво! Вы передали данные на второй экран!"
        
        
    }

}

