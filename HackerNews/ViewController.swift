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

    }


}

