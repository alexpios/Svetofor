//
//  ViewController.swift
//  Svetofor
//
//  Created by Alex on 22.07.23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var redLight: UIButton!
    @IBOutlet var yellowLight: UIButton!
    @IBOutlet var greenLight: UIButton!
    @IBOutlet var changeColorButton: UIButton!
    var lightCode = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        setting buttons
        redLight.layer.cornerRadius = 60
        yellowLight.layer.cornerRadius = 60
        greenLight.layer.cornerRadius = 60
        changeColorButton.layer.cornerRadius = 25
        yellowLight.layer.opacity = 0.3
//        greenLight.backgroundColor = UIColor(red: 0, green: 1, blue: 0, alpha: 0.3)
        greenLight.layer.opacity = 0.3
        
    }

    @IBAction func onChangeListener() {
        lightCode = lightCode + 1
        if lightCode > 2{
            lightCode = 0
        }
        redLight.layer.opacity = 0.3
        greenLight.layer.opacity = 0.3
        yellowLight.layer.opacity = 0.3
        switch lightCode{
        case 0:
            redLight.layer.opacity = 1
        case 1:
            yellowLight.layer.opacity = 1
        case 2:
            greenLight.layer.opacity = 1
            
        default:
            redLight.layer.opacity = 1
        }
    }
    
}

