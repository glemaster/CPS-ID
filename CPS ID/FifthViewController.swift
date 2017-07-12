//
//  FifthViewController.swift
//  CPS ID
//
//  Created by John Wehrenberg on 7/10/17.
//  Copyright © 2017 Gwyneth Lemaster. All rights reserved.
//

import UIKit

class FifthViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate  {
    
    let imagePicker = UIImagePickerController()
    @IBOutlet weak var imageView: UIImageView!
    var idInfo4 = registrationInfo()
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
        let dvc = segue.destination as! FinalViewController
        idInfo4.barcodePic = imageView.image!
        dvc.idInfo5 = idInfo4
    }
    
}
