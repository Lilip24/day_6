//
//  AddPhotoViewController.swift
//  ViewFinder
//
//  Created by Lili on 7/29/19.
//  Copyright © 2019 Lili. All rights reserved.
//

import UIKit

class AddPhotoViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    var imagePicker = UIImagePickerController()

    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
        // Do any additional setup after loading the view.
    }
    @IBAction func takeSelfieTapped2(_ sender: Any) {
        imagePicker.sourceType = .camera
        present(imagePicker, animated: true, completion: nil)
    }
    
    @IBOutlet weak var Image: UIImageView!
    
     internal func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        if let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage{Image.image = selectedImage}
        imagePicker.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func cameraButton(_ sender: UIButton) {
        imagePicker.sourceType = .camera
         present(imagePicker, animated: true, completion: nil)
    }
    
    
    @IBAction func photoLibraryButton(_ sender: UIButton) {
        imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated: true, completion: nil)
    }
    
    @IBAction func saveButton(_ sender: UIButton) {
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
    
            let photoToSave = Photos(entity: Photos.entity(), insertInto: context)
            
            photoToSave.caption = textField.text
            
            if let userImage = Image.image {
               
                if let userImageData = userImage.pngData() {
                    photoToSave.imageData = userImageData
                }
            
        }
        
    }
        
    }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


}
