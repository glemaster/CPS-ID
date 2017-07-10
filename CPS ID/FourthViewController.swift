//
//  FourthViewController.swift
//  CPS ID
//
//  Created by John Wehrenberg on 7/10/17.
//  Copyright © 2017 Gwyneth Lemaster. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate  {
    @IBOutlet weak var imageView: UIImageView!

    let imagePicker = UIImagePickerController()
    var idInfo3 = registrationInfo()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
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
        let dvc = segue.destination as! FifthViewController
        idInfo3.profilePic = imageView
        dvc.idInfo4 = idInfo3
    }

}
