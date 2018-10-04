//
//  DataViewController.swift
//  SegueTest
//
//  Created by Daniel Morato on 04/10/2018.
//  Copyright © 2018 dani. All rights reserved.
//

import UIKit

class DataViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    private var text: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        textView.text = text!
    }
    
    func setText(_ text: String) {
        self.text = text
    }
}
