//
//  ViewController.swift
//  You Are Awsome!
//
//  Created by Ben Moss on 9/6/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(" ViewDidLoad has run!")
        messageLabel.text = "Fabulous? That's You!"
            }

    @IBAction func messageButtonPress(_ sender: UIButton) {
        print("The message button was pressed!")
        messageLabel.text = "You Are Awesome!"
    }
    
}

