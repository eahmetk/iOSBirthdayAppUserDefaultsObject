//
//  ViewController.swift
//  iOSBirthdayApp
//
//  Created by ahmet on 14.12.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var birthdayTextField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let storedName=UserDefaults.standard.object(forKey: "name")
        let storedBirthday=UserDefaults.standard.object(forKey: "birthday")
        
        if let newName = storedName as? String{
            nameLabel.text=newName
        }
        
        if let newBirthday=storedBirthday as? String{
            birthdayLabel.text=newBirthday
        }
        
        
        
        
    }
// METİNDE DEĞİŞKEN KULLANMAK.
    @IBAction func clickButton(_ sender: Any) {
        nameLabel.text="Name:\(nameTextField.text!)"
        birthdayLabel.text="Birthday:\(birthdayTextField.text!)"
        
        UserDefaults.standard.set(nameTextField.text!, forKey: "name")
        UserDefaults.standard.set(birthdayTextField.text!, forKey: "birthday")
        
    }
    
    @IBAction func clearButton(_ sender: Any) {
        
        let newName=UserDefaults.standard.object(forKey: "name")
        let newBirthday=UserDefaults.standard.object(forKey: "birthday")
        
        if (newName as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "name")
            nameLabel.text="Name:"
        }
        if (newBirthday as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "birthday")
            birthdayLabel.text="Birthday:"

        }
        
        
    }
    
}

