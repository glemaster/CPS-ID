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
    let realm = try! Realm()
    var idInfo5 = RegistrationInfo()
    let realmRef = FifthViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        schoolImage.image = UIImage(data : idInfo5.profilePic)
        nameLabel.text = idInfo5.name
        schoolNameLabel.text = idInfo5.school
        IDImage.image = UIImage(data : idInfo5.barcodePic)
        IDLabel.text = "ID Number \(String(idInfo5.idNum))"
        advisoryLabel.text = "Adv.\(String(idInfo5.advisoryNum))"
        lunchLabel.text = "Lunch \(String(idInfo5.lunchPeriod))"
        print(idInfo5.name)
        print(idInfo5.advisoryNum)
        print(idInfo5.lunchPeriod)
        print(idInfo5.idNum)
        print(idInfo5.school)
        print(idInfo5.barcodePic)
        print(idInfo5.profilePic)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
