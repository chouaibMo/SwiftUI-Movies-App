//
//  ShowsList.swift
//  TestApp
//
//  Created by Mounaime chouaib on 08/10/2020.
//

import SwiftUI

struct ShowsList: View {
    
    @State var shows = [ShowData]()
    public var listType : String
    
    init(type : String) {
        self.listType = type
    }
    
    var body: some View {
        ScrollView (.horizontal, showsIndicators: false){
            HStack(spacing : 15){
                ForEach(shows) { show in
                    ShowCard(show)
                }
            }
            .padding()
            
        }
        .onAppear(perform: loadShowsData)
    }
    
    
    func loadShowsData() {
        guard let url = URL(string: "https://api.themoviedb.org/3/tv/\(self.listType)?api_key=3285d0bfd0a53732ac3b94eba7ae8fab") else { return
        }
        let request = URLRequest(url: url)
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data {
                if let decodedResponse = try? JSONDecoder().decode(ShowsResponse.self, from: data) {
                    DispatchQueue.main.async {
                        self.shows = decodedResponse.results
                    }
                    return
                }
            }
            print("Fetch failed: \(error?.localizedDescription ?? "Unknown error")")
        }.resume()
    }
}



