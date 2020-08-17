//
//  AlbumDetailsViewController.swift
//  iOS_Assignment_App
//
//  Created by Amit Biswas on 8/10/20.
//  Copyright © 2020 Amit Biswas. All rights reserved.
//

import UIKit

class AlbumDetailsViewController: UIViewController {

    var lblArtistText: String?
    var lblAlbumText: String?
    var lblGenreText: String?
    var lblReleaseDateText: String?
    var lblCopyrightInfoText: String?
    var image: UIImage?
    
    @IBOutlet weak var lblArtist: UILabel!
    @IBOutlet weak var imgImageView: UIImageView!
    @IBOutlet weak var lblAlbum: UILabel!
    @IBOutlet weak var lblGenre: UILabel!
    @IBOutlet weak var lblReleaseDate: UILabel!
    @IBOutlet weak var lblCopyrightInfo: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.lblArtist.text = lblArtistText
        self.lblAlbum.text = lblAlbumText
        self.lblGenre.text = lblGenreText
        self.lblReleaseDate.text = lblReleaseDateText
        self.lblCopyrightInfo.text = lblCopyrightInfoText
//        self.imgImageView.image = image
        // Do any additional setup after loading the view.
    }

}
