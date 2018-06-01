//
//  ViewController.swift
//  Wallet App
//
//  Created by Jaskirat Singh on 21/05/18.
//  Copyright © 2018 jassie. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    // MARK: IBOutlets.
    @IBOutlet weak var profileImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: Making imageView rounded.
        profileImage.roundedImage()
    }
    
    @IBAction func upGesture(_ sender: Any) {
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "id") as! DetailViewController
            self.present(vc, animated: true, completion: nil)
        
    }
    
}


