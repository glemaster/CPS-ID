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

    @IBOutlet weak var schoolImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var IDImage: UIImageView!
    @IBOutlet weak var IDLabel: UILabel!
    @IBOutlet weak var advisoryLabel: UILabel!
    @IBOutlet weak var lunchLabel: UILabel!
    let realm = try! Realm()
    var idInfo5 = registrationInfo()
    let realmRef = FifthViewController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        schoolImage.image = UIImage(data : idInfo5.profilePic)
        nameLabel.text = idInfo5.name
        IDImage.image = UIImage(data : idInfo5.barcodePic)
        IDLabel.text = String(idInfo5.idNum)
        advisoryLabel.text = String(idInfo5.advisoryNum)
        lunchLabel.text = String(idInfo5.lunchPeriod)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
