//
//  RegistrationInfo.swift
//  CPS ID
//
//  Created by Bradley Yu on 7/11/17.
//  Copyright © 2017 Gwyneth Lemaster. All rights reserved.
//

import Foundation
import UIKit
import RealmSwift

class registrationInfo: Object  {
    
    dynamic var name = String()
    dynamic var advisoryNum = Int()
    dynamic var lunchPeriod = Int()
    dynamic var idNum = Int()
    dynamic var school = String()
    dynamic var profilePic = UIImage()
    dynamic var barcodePic = UIImage()
    
}
