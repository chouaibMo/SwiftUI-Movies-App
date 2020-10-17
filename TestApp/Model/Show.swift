//
//  Show.swift
//  TestApp
//
//  Created by Mounaime chouaib on 08/10/2020.
//

import Foundation


struct ShowsResponse: Codable {
    var results: [ShowData]
}

struct ShowData : Identifiable, Codable{
    var id : Int
    var name : String
    var overview : String
    var poster_path : String
    var backdrop_path: String
    
}
