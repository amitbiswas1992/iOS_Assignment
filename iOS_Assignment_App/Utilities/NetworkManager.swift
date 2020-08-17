//
//  NetworkManager.swift
//  iOS_Assignment_App
//
//  Created by Amit Biswas on 8/10/20.
//  Copyright © 2020 Amit Biswas. All rights reserved.
////
//
//import UIKit
//
//
//class NetworkManager {
//
//    var artist: Artist?
//    var delegate: getresult?
//    static let shared = NetworkManager()
//    var errorMsg: CustomErrorMessage!
//
//
//    private init(){}
//
//    func getArtist(for username: String , page: Int, completed: @escaping ([Artist], Error )-> Void) {
//
//        let url = URL(string: "https://rss.itunes.apple.com/api/v1/us/apple-music/coming-soon/all/10/explicit.json")!
//
//        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
//            if let _ = error {
//                print(error?.localizedDescription as Any)
//                return
//            }
//
//            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
//                print(error?.localizedDescription as Any)
//                return
//            }
//
//            guard let data = data else {
//                print(error?.localizedDescription as Any)
//                return
//            }
//
//            do {
//                let decoder = JSONDecoder()
//                decoder.keyDecodingStrategy = .convertFromSnakeCase
//                let artist = try decoder.decode(Artist?.self, from: data)
//                self.artist = artist
//               print("Success request")
//            }
//            catch {
//                print(error.localizedDescription as Any)
//            }
//        }
//
//
//        task.resume()
//}
//
//}


