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
    
    var objects = [Any] ()
    
    let realm = try! Realm()
    lazy var ids: Results<RegistrationInfo> = {
        self.realm.objects(RegistrationInfo.self)
    }()
    
    let vc = FinalViewController()

 
   
    func testIfRealmIsFilledIn() {
        if ids.count >= 1 {
            if ids[0].name != "" {
              present(vc, animated: true, completion: nil)
            }
            else {
                return
            }
        }
    }
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //testIfRealmIsFilledIn()
        for id in ids {
            objects.append(id)
        }
        
}
    
}

