//
//  ViewController.swift
//  CPS ID
//
//  Created by Gwyneth Lemaster on 7/7/17.
//  Copyright © 2017 Gwyneth Lemaster. All rights reserved.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {
    
    let realm = try! Realm()
    var id = RegistrationInfo()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        testIfRealmIsFilledIn()
    }
    
    func testIfRealmIsFilledIn() {
        if id.name != "" {
            performSegue(withIdentifier: "realmSegue", sender: nil)
        }
    }
    
}

