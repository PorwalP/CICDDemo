//
//  ViewController.swift
//  Cicd_ios_demo
//
//  Created by Payal Porwal on 23/01/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var firstNumValue: UITextField!
    @IBOutlet weak var secondNumValue: UITextField!
    @IBOutlet weak var resulttextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func actionOnAddButton(_ sender: Any) {
        let firstNumberVal: Int? = Int(firstNumValue.text ?? "")
        let secondNumberVal: Int? = Int(secondNumValue.text ?? "")
        let result = addNumber(num1: firstNumberVal ?? 0, num2: secondNumberVal ?? 0)
        resulttextField.text = String(result)
    }
     
    func addNumber<T: Numeric>(num1: T, num2: T) -> T {
        return num1 + num2
    }

}
