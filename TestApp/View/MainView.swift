//
//  MainView.swift
//  TestApp
//
//  Created by Mounaime chouaib on 07/10/2020.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView{
            MovieView()
                .tabItem{
                    Image(systemName: "film")
                    Text("Movies")
                }
            ShowView()
                .tabItem{
                    Image(systemName: "tv")
                    Text("TV shows")
                }
            SearchView()
                .tabItem{
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
            FavoriteView()
                .tabItem{
                    Image(systemName: "star")
                    Text("Favorites")
                }
        }.accentColor(Color("ColorYellow"))
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
