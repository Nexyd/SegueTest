//
//  ViewController.swift
//  SegueTest
//
//  Created by Daniel Morato on 04/10/2018.
//  Copyright © 2018 dani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var dataViewController: DataViewController?

    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // prepare is called after performSegue.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let controller = segue.destination as? DataViewController {
            let text = sender as? String
            controller.setText(text ?? "")
            dataViewController = controller
        }
    }

    @IBAction func button1Click(_ sender: UIButton) {
        // Call performSegue to show the ViewController it points to.
        self.performSegue(withIdentifier: "showDataViewController",
            sender: sender.titleLabel?.text)
    }
    
    @IBAction func button2Click(_ sender: UIButton) {
         self.performSegue(withIdentifier: "showDataViewController",
            sender: sender.titleLabel?.text)
    }
    
    @IBAction func button3Click(_ sender: UIButton) {
         self.performSegue(withIdentifier: "showDataViewController",
            sender: sender.titleLabel?.text)
    }
}
