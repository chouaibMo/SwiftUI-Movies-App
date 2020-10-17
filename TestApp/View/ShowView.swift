//
//  ShowView.swift
//  TestApp
//
//  Created by Mounaime chouaib on 07/10/2020.
//

import SwiftUI

struct ShowView: View {
    var body: some View {
        NavigationView{
            List {
                // NOW PLAYING MOVIES :
               Text("On the air")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.top )
                ShowsList(type : "on_the_air")

                
                // UPCOMING MOVIES :
//                Text("latest")
//                    .font(.title)
//                    .fontWeight(.bold)
//                    .padding(.top)
//                ShowsList(type : "latest")

                
                // Popular MOVIES :
               Text("Popular")
                    .font(.title)
                    .fontWeight(.bold)
                .padding(.top)
                ShowsList(type : "popular")

                
                // TOP RATED MOVIES :
//               Text("Top rated")
//                    .font(.title)
//                    .fontWeight(.bold)
//                .padding(.top)
//                ShowsList(type : "top_rated")

            }
            .navigationBarTitle("TV Shows")
        }
    }
    
   
    
}

struct ShowView_Previews: PreviewProvider {
    static var previews: some View {
        ShowView()
    }
}
