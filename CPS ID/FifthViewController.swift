//
//  FifthViewController.swift
//  CPS ID
//
//  Created by Gwyneth Lemaster on 7/10/17.
//  Copyright © 2017 Gwyneth Lemaster. All rights reserved.
//

import UIKit
import RealmSwift

class FifthViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate  {
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    let imagePicker = UIImagePickerController()
    var idInfo4 = RegistrationInfo()
    
    let realm = try! Realm()
    lazy var ids: Results<RegistrationInfo> = {
        self.realm.objects(RegistrationInfo.self)
    }()
    
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
    }
}
