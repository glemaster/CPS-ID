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
    
    var objects = [Any]()
    let realm = try! Realm()
   // lazy var id: Results<RegistrationInfo> = {
   //     self.realm.objects(RegistrationInfo.self)
   // }()
    
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

