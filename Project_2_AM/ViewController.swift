//
//  ViewController.swift
//  Project_2_AM
//
//  Created by Andrew Messer on 2/7/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var milesInput: UITextField!
    
    @IBOutlet weak var kilosInput: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))

        view.addGestureRecognizer(tap)

    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }


    @IBAction func doConvertBtn(_ sender: UIButton) {
        let inputMiles1 = milesInput.text
        let inputKilos1 = kilosInput.text
        if (inputMiles1 == "" && inputKilos1 == "")
        {
            milesInput.text = ""
            kilosInput.text = ""
        }
        var inputMiles = Float(inputMiles1!)
        if (inputMiles1 == "" || inputMiles1 == nil)
        {
            inputMiles = 0.0
            milesInput.text = String(0.0)
        }
        else
        {
            let mileToKilo = (inputMiles! / 0.62137119)
            kilosInput.text = String(mileToKilo)
        }
    }
    
    @IBAction func doConvertKmBtn(_ sender: Any) {
        let inputMiles1 = milesInput.text
        let inputKilos1 = kilosInput.text
        if (inputKilos1 == "" && inputMiles1 == "")
        {
            milesInput.text = ""
            kilosInput.text = ""
            print("hello")
        }
        var inputKilos = Float(inputKilos1!)
        if (inputKilos1 == "" || inputKilos1 == nil)
        {
            inputKilos = 0.0
            kilosInput.text = String(0.0)
        }
        else
        {
            let kiloToMile = (inputKilos! * 0.62137119)
            milesInput.text = String(kiloToMile)
        }
    }
}

