//
//  ThirdViewController.swift
//  CPS ID
//
//  Created by Gwyneth Lemaster on 7/10/17.
//  Copyright © 2017 Gwyneth Lemaster. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    @IBOutlet weak var scrollTextField: UITextField!
    var data = listOfSchools()
    var picker = UIPickerView()
    var idInfo2 = RegistrationInfo()
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return data.list.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        scrollTextField.text = data.list[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return data.list[row]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        picker.delegate = self
        picker.dataSource = self
        scrollTextField.inputView = picker
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if scrollTextField.text == "" {
            let invalid = UIAlertController(title: "Please Choose a School", message: nil, preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            invalid.addAction(okAction)
            present(invalid, animated: true, completion: nil)
        }
        else {
            let dvc = segue.destination as! FourthViewController
            idInfo2.school = scrollTextField.text!
            dvc.idInfo3 = idInfo2
        }
    }
}
