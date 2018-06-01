//
//  DetailViewController.swift
//  Wallet App
//
//  Created by Jaskirat Singh on 24/05/18.
//  Copyright © 2018 jassie. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UIViewControllerTransitioningDelegate {

    let bubble = BubbbleTransition()
    
    // MARK: IBOutlets.
    @IBOutlet weak var bubblePresent: UIButton!
    @IBOutlet weak var profileImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: Making imageView round.
        profileImage.roundedImage()
        
        // MARK: Making UIButton round.
        bubblePresent.roundedButton()

        // MARK: Making shadow of button.
        bubblePresent.shadowButton()
        
    }
    
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        bubble.transitionMode = .present
        bubble.startingPoint = bubblePresent.center
        bubble.circleColor = bubblePresent.backgroundColor!
        return bubble
    }
    
    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        bubble.transitionMode = .dissmiss
        bubble.startingPoint = bubblePresent.center
        bubble.circleColor = bubblePresent.backgroundColor!
        return bubble
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let bubbleVC = segue.destination as! BubbleViewController
        bubbleVC.transitioningDelegate = self
        bubbleVC.modalPresentationStyle = .custom
    }
    
    
    @IBAction func downGesture(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
