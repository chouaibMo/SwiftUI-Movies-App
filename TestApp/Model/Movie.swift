//
//  Movie.swift
//  TestApp
//
//  Created by Mounaime chouaib on 07/10/2020.
//

import Foundation

struct MoviesResponse: Codable {
    var results: [MovieData]
}

struct MovieData : Identifiable, Codable{
    var id : Int
    var title : String
    var overview : String
    var poster_path : String
    var backdrop_path: String
    
}
