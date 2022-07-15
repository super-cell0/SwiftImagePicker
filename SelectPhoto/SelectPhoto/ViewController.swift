//
//  ViewController.swift
//  SelectPhoto
//
//  Created by xiaoxiong beidi on 2022/4/29.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var homeImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func tapButton(_ sender: Any) {
        let pickerViewController = UIImagePickerController()
        pickerViewController.sourceType = .photoLibrary
        pickerViewController.delegate = self
        pickerViewController.allowsEditing = true
        
        present(pickerViewController, animated: true)
    }
}

extension ViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        //UIImagePickerControllerEditedImage
        if let image = info[UIImagePickerController.InfoKey(rawValue: "UIImagePickerControllerEditedImage")] as? UIImage {
            homeImageView.image = image
        }
        //print("\(info)")
        picker.dismiss(animated: true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }
}

