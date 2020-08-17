//
//  ErrorMessage.swift
//  iOS_Assignment_App
//
//  Created by Amit Biswas on 8/16/20.
//  Copyright © 2020 Amit Biswas. All rights reserved.
//

import Foundation

enum CustomErrorMessage: String, Error {
    case invalidUsername = "This username created an invalid request"
    case unableToComplete = "Unable to complete request, please check your internet connection"
    case invalidResponse = "Invalid respond from the server. Please try again."
    case invalidData = "The data recieved from the server was invalid"
    case alreadyInFavorites = "You've already favorited this user. You must REALLY like them!"
    case unableToFavorite   = "There was an error favoriting this user. Please try again."
}
