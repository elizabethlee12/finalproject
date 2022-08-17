//
//  TodayUIViewController.swift
//  ReCo
//
//  Created by scholar on 8/16/22.
//

import UIKit

class TodayUIViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
var imagePicker = UIImagePickerController()
    
    @IBOutlet weak var captionTextField: UITextField!
    
    @IBOutlet weak var imageView: UIImageView!
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]){
    
        if let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage{
            imageView.image = selectedImage
            imagePicker.dismiss(animated: true, completion: nil)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
        captionTextField.text = "Add Caption Here"
        }
    
    @IBAction func choosePhotoTapped(_ sender: Any) {
        imagePicker.sourceType = .photoLibrary
        
        present(imagePicker, animated: true, completion: nil)
    }
    
    @IBAction func saveCaptionTapped(_ sender: UIButton) {
        Captions.newCaption = captionTextField.text!
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
