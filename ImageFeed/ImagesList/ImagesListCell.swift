//
//  ImagesListCell.swift
//  ImageFeed
//
//  Created by Алексей Сиденко on 05.05.2024.
//

import UIKit

final class ImagesListCell: UITableViewCell {

    static let reuseIdentifier = "ImagesListCell"
    
    @IBOutlet var ImageCell: UIImageView!
    @IBOutlet weak var buttonLike: UIButton!
    @IBOutlet weak var LabelDate: UILabel!
    
}
