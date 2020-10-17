//
//  MainView.swift
//  TestApp
//
//  Created by Mounaime chouaib on 06/10/2020.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            MoviesView()
                .tabItem {
                    Image(systemName: "film")
                    Text("Movies")
                }
            ShowsView()
                .tabItem {
                    Image(systemName: "tv") //
                    Text("TV Shows")
                }
            FavoriteView()
                .tabItem {
                    Image(systemName: "star")
                    Text("Favorites")
                }
            SettingsView()
                .tabItem {
                    Image(systemName: "person.crop.circle")
                    Text("Settings")
                }
        }
        .accentColor(Color("ColorYellow"))
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
