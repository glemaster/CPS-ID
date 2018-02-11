//
//  FinalViewController.swift
//  CPS ID
//
//  Created by Gwyneth Lemaster on 7/11/17.
//  Copyright © 2017 Gwyneth Lemaster. All rights reserved.
//

import UIKit
import RealmSwift

class FinalViewController: UIViewController {
    
    @IBOutlet weak var schoolNameLabel: UILabel!
    @IBOutlet weak var schoolImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var IDImage: UIImageView!
    @IBOutlet weak var IDLabel: UILabel!
    @IBOutlet weak var advisoryLabel: UILabel!
    @IBOutlet weak var lunchLabel: UILabel!
    
    let imagePicker = UIImagePickerController()
    
    let realm = try! Realm()
    var idInfo5 = RegistrationInfo()
    let realmRef = FifthViewController()
    lazy var ids: Results<RegistrationInfo> = {//55
        self.realm.objects(RegistrationInfo.self)
    }()

    
    var information = RegistrationInfo()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addToRealm()
        setFields()
    }
    
    func setFields() {
        nameLabel.text = idInfo5.name
        schoolImage.image = UIImage(data : idInfo5.profilePic)
        schoolNameLabel.text = idInfo5.school
        IDImage.image = UIImage(data : idInfo5.barcodePic)
        IDLabel.text = "ID Number \(String(idInfo5.idNum))"
        advisoryLabel.text = "Adv.\(String(idInfo5.advisoryNum))"
        lunchLabel.text = "Lunch \(String(idInfo5.lunchPeriod))"
    }
    
    
    func addToRealm() {
        try! self.realm.write {
            information.name = idInfo5.name
            information.lunchPeriod = idInfo5.lunchPeriod
            information.idNum = idInfo5.idNum
            information.barcodePic = idInfo5.barcodePic
            information.advisoryNum = idInfo5.advisoryNum
            information.profilePic = idInfo5.profilePic
            information.school = idInfo5.school
            self.realm.add(information)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
