//
//  ViewController.swift
//  UserDefaultDemo
//
//  Created by Eduardo Villalba on 8/5/19.
//  Copyright © 2019 Eduardo Villalba. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var booleanSwitch: UISwitch!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblBoolean: UILabel!
    let userSettings = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        getValues()
        
    }

    @IBAction func setName(_ sender: Any) {
        userSettings.set(txtName.text, forKey: "Name")
    }
    
    @IBAction func setBoolean(_ sender: Any) {
        userSettings.set(booleanSwitch.isOn, forKey: "checkBoolean")
    }
    
    @IBAction func refreshValues(_ sender: Any) {
        getValues()
    }
    
    func getValues()
    {
        //let name = userSettings.string(forKey: "Name")
        if let name = userSettings.string(forKey: "Name"){
             lblName.text = "The Name stored is: " + name
        }
       
        let booleanVar = userSettings.bool(forKey: "checkBoolean")
        lblBoolean.text = "The boolean stored is: " + String(booleanVar)
    }
    
}

