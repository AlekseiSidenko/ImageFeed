//
//  SingleImageViewController.swift
//  ImageFeed
//
//  Created by Алексей Сиденко on 30.06.2024.
//

import UIKit

class SingleImageViewController: UIViewController {
    var image: UIImage?
    
    @IBOutlet var imageView: UIImageView!
    
    @IBAction func didTapBackButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView?.image = image
    }
}
