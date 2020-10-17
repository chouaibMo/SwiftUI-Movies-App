//
//  MovieView.swift
//  TestApp
//
//  Created by Mounaime chouaib on 07/10/2020.
//

import SwiftUI

struct MovieView: View {
    var body: some View {
        NavigationView{
            List {
                // NOW PLAYING MOVIES :
               Text("Now playing")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.top )
                FilmsList(type : "now_playing")

                
                // UPCOMING MOVIES :
                Text("Upcoming")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.top)
                FilmsList(type : "upcoming")

                
                // Popular MOVIES :
               Text("Popular")
                    .font(.title)
                    .fontWeight(.bold)
                .padding(.top)
                FilmsList(type : "popular")

                
                // TOP RATED MOVIES :
               Text("Top rated")
                    .font(.title)
                    .fontWeight(.bold)
                .padding(.top)
                FilmsList(type : "top_rated")

            }
            .navigationBarTitle("Movies")
        }
        
    }



}
    
struct MovieView_Previews: PreviewProvider {
    static var previews: some View {
        MovieView()
    }
}
