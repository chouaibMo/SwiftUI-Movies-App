//
//  FilmCard.swift
//  TestApp
//
//  Created by Mounaime chouaib on 05/10/2020.
//

import SwiftUI

struct FilmCard: View {
    public var movie: MovieData

    init(_ movie: MovieData) {
        self.movie = movie
    }
            
    var body: some View {
        RemoteImage(url: "https://image.tmdb.org/t/p/w500\(self.movie.poster_path)")
            .aspectRatio(contentMode: .fit)
            .frame(width: 130, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .cornerRadius(8)
            .onTapGesture {
                print(self.movie.title)
            }
    }
}
