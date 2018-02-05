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

class RegistrationInfo: NSObject  {
    
    dynamic var name = String()
    dynamic var advisoryNum = Int()
    dynamic var lunchPeriod = Int()
    dynamic var idNum = Int()
    dynamic var school = String()
    dynamic var profilePic = Data()
    dynamic var barcodePic = Data()
    
    convenience init(name: String, advisoryNum: Int, lunchPeriod: Int, idNum: Int, school: String, profilePic: Data, barcodePic: Data) {
        self.init()
        self.name = name
        self.advisoryNum = advisoryNum
        self.lunchPeriod = lunchPeriod
        self.idNum = idNum
        self.school = school
        self.profilePic = profilePic
        self.barcodePic = barcodePic
    }
    
}
