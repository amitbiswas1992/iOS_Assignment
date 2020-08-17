//
//  AlbumViewController.swift
//  iOS_Assignment_App
//
//  Created by Amit Biswas on 8/10/20.
//  Copyright © 2020 Amit Biswas. All rights reserved.
//

import UIKit

class AlbumViewController: UIViewController {
   
    var artist: Artist?
    
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib(nibName: "AlbumTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "AlbumTableViewCell")
        
        tableView.delegate = self
        tableView.dataSource = self
        getArtist { (result, error) in
            print("Success")
        }
    }

}

extension AlbumViewController :  UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return artist?.feed.results.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "AlbumTableViewCell") as! AlbumTableViewCell
        //cell.bind(result: (artist?.feed.results[indexPath.row])!)
        cell.bind(result: (artist?.feed.results[indexPath.row])!)
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let showDetails = self.storyboard!.instantiateViewController(identifier: "AlbumDetailsViewController") as! AlbumDetailsViewController
        
        //change here
        showDetails.lblArtistText = "Artist"
        showDetails.lblAlbumText = "Album"
        showDetails.lblGenreText = "Genre"
        showDetails.lblReleaseDateText = "Release Date"
        showDetails.lblCopyrightInfoText = "Copyright Info"
//        showDetails.image = 
        
        self.navigationController?.pushViewController(showDetails, animated: true)
    }
    
}

extension AlbumViewController {
    
     func getArtist( completed: @escaping ([Artist], Error )-> Void) {
            
            let url = URL(string: "https://rss.itunes.apple.com/api/v1/us/apple-music/coming-soon/all/50/explicit.json")!
            
            let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
                if let _ = error {
                    print(error?.localizedDescription as Any)
                    return
                }
                
                guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                    print(error?.localizedDescription as Any)
                    return
                }
                
                guard let data = data else {
                    print(error?.localizedDescription as Any)
                    return
                }
                
                do {
                   // let decoder = JSONDecoder()
                    let result = try JSONDecoder().decode(Artist?.self, from: data)
                    self.artist = result
                    DispatchQueue.main.async {
                        self.tableView.reloadData()
                    }
                   print("Success request")
                    print(result)
                }
                catch {
                    print(error.localizedDescription as Any)
                }
            }
            
            
            task.resume()
    }
    
}
