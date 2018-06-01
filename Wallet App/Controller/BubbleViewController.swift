//
//  BubbleViewController.swift
//  Wallet App
//
//  Created by Jaskirat Singh on 25/05/18.
//  Copyright © 2018 jassie. All rights reserved.
//

import UIKit

class BubbleViewController: UIViewController {

    // MARK: IBOutlets.
    
    @IBOutlet weak var bubbleDissmiss: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // MARK: Making UIButton round.
        bubbleDissmiss.roundedButton()
        
        // MARK: Making shadow of button.
        bubbleDissmiss.shadowButton()
    }
    
    
    
    @IBAction func bubbleDissmiss(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
