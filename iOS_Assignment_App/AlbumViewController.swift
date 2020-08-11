//
//  AlbumViewController.swift
//  iOS_Assignment_App
//
//  Created by Amit Biswas on 8/10/20.
//  Copyright © 2020 Amit Biswas. All rights reserved.
//

import UIKit

class AlbumViewController: UIViewController {

    var artist = ["Amit", "Suman"]
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib(nibName: "AlbumTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "AlbumTableViewCell")
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }

}

extension AlbumViewController :  UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return artist.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "AlbumTableViewCell") as! AlbumTableViewCell
        cell.albumLabel.text = artist[indexPath.row]
        
        return cell
    }
    
    
    
}
