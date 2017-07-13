//
//  SecondViewController.swift
//  CPS ID
//
//  Created by Gwyneth Lemaster on 7/10/17.
//  Copyright © 2017 Gwyneth Lemaster. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var regName: UITextField!
    @IBOutlet weak var regAdvisoryNumber: UITextField!
    @IBOutlet weak var regLunchPeriod: UITextField!
    @IBOutlet weak var regIDNumber: UITextField!
    var idInfo = RegistrationInfo()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dvc = segue.destination as! ThirdViewController
        idInfo.name = regName.text!
        idInfo.advisoryNum = Int(regAdvisoryNumber.text!)!
        idInfo.lunchPeriod = Int(regLunchPeriod.text!)!
        idInfo.idNum = Int(regIDNumber.text!)!
        
        dvc.idInfo2 = idInfo
  
    }
}
