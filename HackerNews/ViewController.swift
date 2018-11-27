//
//  ViewController.swift
//  HackerNews
//
//  Created by Anurita Srivastava on 26/11/18.
//  Copyright © 2018 Anurita Srivastava. All rights reserved.
//

import UIKit
import GoogleSignIn

class ViewController: UIViewController, GIDSignInUIDelegate {

    @IBOutlet weak var signInB: GIDSignInButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        GIDSignIn.sharedInstance().uiDelegate = self
  NotificationCenter.default.addObserver(self, selector: #selector(didSignIn), name: NSNotification.Name("SuccessfulSignInNotification"), object: nil)
    }

    @objc func didSignIn()  {

        // Add your code here to push the new view controller
       performSegue(withIdentifier: "segueToNewsVC", sender: self)

    }

    deinit {
        NotificationCenter.default.removeObserver(self)
    }

}

