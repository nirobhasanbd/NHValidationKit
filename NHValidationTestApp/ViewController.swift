//
//  ViewController.swift
//  NHValidationTestApp
//
//  Created by Md Nirob Hasan on 21/12/24.
//

import UIKit
import NHValidationKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        NHValidator.printMessage("Hello World")

        let isValidEmail = NHValidator.isValidEmail("nirobhasan@gmail.com")
        print("isValidEmail: \(isValidEmail)")
    }


}

