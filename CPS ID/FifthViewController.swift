//
//  FifthViewController.swift
//  CPS ID
//
//  Created by John Wehrenberg on 7/10/17.
//  Copyright © 2017 Gwyneth Lemaster. All rights reserved.
//

import UIKit
import RealmSwift

class FifthViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate  {
    
    let imagePicker = UIImagePickerController()
    @IBOutlet weak var imageView: UIImageView!
    var idInfo4 = RegistrationInfo()
    var information = RegistrationInfo()
    let realm = try! Realm()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
    }
    
    var detailItem: RegistrationInfo? {
        didSet {
            
        }
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        imagePicker.dismiss(animated: true) {
            let selectedImage = info[UIImagePickerControllerOriginalImage] as! UIImage
            self.imageView.image = selectedImage
        }
    }
    
    @IBAction func onUploadImageTapped(_ sender: Any) {
        imagePicker.sourceType = UIImagePickerControllerSourceType.photoLibrary
        present(imagePicker, animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dvc = segue.destination as! FinalViewController
        idInfo4.barcodePic = UIImagePNGRepresentation(imageView.image!)!
        dvc.idInfo5 = idInfo4
        
        try! self.realm.write {
            information.name = idInfo4.name
            information.lunchPeriod = idInfo4.lunchPeriod
            information.idNum = idInfo4.idNum
            information.barcodePic = UIImagePNGRepresentation(imageView.image!)!
            information.advisoryNum = idInfo4.advisoryNum
            information.profilePic = idInfo4.profilePic
            information.school = idInfo4.school
        }
    }
}
