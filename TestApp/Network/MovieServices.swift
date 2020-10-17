//
//  MovieServices.swift
//  TestApp
//
//  Created by Mounaime chouaib on 07/10/2020.
//

import Foundation


enum ResultError: String, Error {
    case invalidUsername = "This username created an invalid request. Please try again."
    case unableToComplete = "Unable to completed your request. Please check your internet connection."
    case invalidResponse = "Invalid response from server. Please try again"
    case invalidData = "The data received from the server is invalid. Please try again"
}


class MovieSevices {
    let APIKEY: String = "3285d0bfd0a53732ac3b94eba7ae8fab"
    
    let imageBaseUrl : String = "https://image.tmdb.org/t/p/w500"

    let popularURL:  String = "https://api.themoviedb.org/3/movie/popular?api_key="
    let upcomingURL: String = "https://api.themoviedb.org/3/movie/upcoming?api_key="
    let topRatedURL: String = "https://api.themoviedb.org/3/movie/top_rated?api_key="
    let latestURL:   String = "https://api.themoviedb.org/3/movie/latest?api_key="
   
}
