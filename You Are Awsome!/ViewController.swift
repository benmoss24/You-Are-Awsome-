//
//  ViewController.swift
//  You Are Awsome!
//
//  Created by Ben Moss on 9/6/21.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
   
    var imageNumber = -1
    var messageNumber = -1
    let totalNumberOfIMages = 9
    
    override func viewDidLoad() {
        super.viewDidLoad()
            }

    @IBAction func messageButtonPress(_ sender: UIButton) {
        let messages = ["You Are Awesome!",
                        "You Are Great",
                        "You Are Fantastic",
                        "When the Genius Bar needs help, they call you!",
                        "Fabulous? That's You!",
                        "You've Got The Design Skills of Jony Ive"]
        
        
        var newMessageNumber: Int
        repeat {
            newMessageNumber = Int.random(in: 0...messages.count-1)
        }while messageNumber == newMessageNumber
        
        messageNumber = newMessageNumber
        messageLabel.text = messages[messageNumber]
        
        var newImageNumber: Int
        repeat {
            newImageNumber = Int.random(in: 0...totalNumberOfIMages)
            
        } while imageNumber == newImageNumber
        imageNumber = newImageNumber
        imageView.image = UIImage(named: "image\(imageNumber)")

    }
    
}

