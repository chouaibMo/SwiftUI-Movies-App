//
//  ShowCard.swift
//  TestApp
//
//  Created by Mounaime chouaib on 08/10/2020.
//

import SwiftUI

struct ShowCard: View {
    public var show: ShowData

    init(_ movie: ShowData) {
        self.show = movie
    }
            
    var body: some View {
        RemoteImage(url: "https://image.tmdb.org/t/p/w500\(self.show.poster_path)")
            .aspectRatio(contentMode: .fit)
            .frame(width: 130, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .cornerRadius(8)
            .onTapGesture {
                print(self.show.name)
            }
    }
}

