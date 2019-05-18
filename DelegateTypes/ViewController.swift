//
//  ViewController.swift
//  DelegateTypes
//
//  Created by Greeens5 on 18/05/19.
//  Copyright © 2019 Book. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    @IBOutlet weak var text: UITextField!
    @IBAction func cancel(_ sender: Any) {
        self .view.endEditing(true)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        text.resignFirstResponder()
        print("Should return")
        return true
    }
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        print("Should Change Character")
        return true
    }
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        print("Should Clear")
        return true
    }
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        print("Should Begin Editing")
        return true
    }
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        print("Should End Editing")
        return true
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

