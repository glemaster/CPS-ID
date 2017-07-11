//
//  FinalViewController.swift
//  CPS ID
//
//  Created by Gwyneth Lemaster on 7/11/17.
//  Copyright © 2017 Gwyneth Lemaster. All rights reserved.
//

import UIKit

class FinalViewController: UIViewController {

    @IBOutlet weak var schoolImage: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var IDImage: UIImageView!
    
    @IBOutlet weak var IDLabel: UILabel!
    
    @IBOutlet weak var advisoryLabel: UILabel!
    
    @IBOutlet weak var lunchLabel: UILabel!
    var idInfo5 = registrationInfo()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
