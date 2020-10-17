//
//  CardsList.swift
//  TestApp
//
//  Created by Mounaime chouaib on 05/10/2020.
//

import SwiftUI

struct FilmsList: View {
    
    @State var movies = [MovieData]()
    public var listType : String
    
    init(type : String) {
        self.listType = type
    }
    
    var body: some View {
        ScrollView (.horizontal, showsIndicators: false){
            HStack(spacing : 15){
                ForEach(movies) { movie in
                    FilmCard(movie)
                }
            }
            .padding()
            
        }
        .onAppear(perform: loadMoviesData)
    }
    
    
    func loadMoviesData() {
        guard let url = URL(string: "https://api.themoviedb.org/3/movie/\(self.listType)?api_key=3285d0bfd0a53732ac3b94eba7ae8fab") else { return
        }
        let request = URLRequest(url: url)
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data {
                if let decodedResponse = try? JSONDecoder().decode(MoviesResponse.self, from: data) {
                    DispatchQueue.main.async {
                        self.movies = decodedResponse.results
                    }
                    return
                }
            }
            print("Fetch failed: \(error?.localizedDescription ?? "Unknown error")")
        }.resume()
    }
}

struct FilmsList_Previews: PreviewProvider {
    static var previews: some View {
        FilmsList(type :"latest")
    }
}
