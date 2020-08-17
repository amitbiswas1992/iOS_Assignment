//
//  AlbumTableViewCell.swift
//  iOS_Assignment_App
//
//  Created by Amit Biswas on 8/11/20.
//  Copyright © 2020 Amit Biswas. All rights reserved.
//

import UIKit

class AlbumTableViewCell: UITableViewCell {

    @IBOutlet weak var albumLabel: UILabel!
    @IBOutlet weak var artistLabel: UILabel!
    @IBOutlet weak var imageLabel: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func bind(result: Result) {
           let url = URL(string: result.artworkUrl100)
           let data = try? Data(contentsOf: url!)
        self.albumLabel.text = result.name
        self.artistLabel.text = result.artistName
        self.imageLabel.image = UIImage(data: data!)
          
       }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
