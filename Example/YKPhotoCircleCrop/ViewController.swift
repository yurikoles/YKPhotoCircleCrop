//
//  ViewController.swift
//  YKPhotoCircleCrop
//
//  Created by Andrea Antonioni on 14/01/17.
//  Modified by Yurii Kolesnykov on on 02.06.2018.
//  Copyright © 2018 Yurii Kolesnykov. All rights reserved.
//

import UIKit
import YKPhotoCircleCrop

class ViewController: UIViewController, YKCircleCropViewControllerDelegate {

    @IBOutlet weak var imageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.layer.borderWidth = 2
        imageView.layer.borderColor = UIColor.black.cgColor
        imageView.clipsToBounds = false
        imageView.layer.cornerRadius = imageView.frame.width/2
    }

    //- - -
    // MARK: - Actions
    //- - -
    @IBAction func cropAction(_ sender: UIButton) {
        let circleCropController = YKCircleCropViewController()
        circleCropController.image = UIImage(named: "my_photo.jpg")
        circleCropController.delegate = self
        present(circleCropController, animated: true, completion: nil)
    }

    //- - -
    // MARK: - YKCircleCropViewControllerDelegate
    //- - -
    func circleCropDidCancel() {
        print("User canceled the crop flow")
    }

    func circleCropDidCropImage(_ image: UIImage) {
        imageView.image = image
        print("Image cropped!")
    }
}
