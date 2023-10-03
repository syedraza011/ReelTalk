//
//  TopMoviesView.swift
//  ReelTalk
//
//  Created by Syed Raza on 10/2/23.
//

import SwiftUI

struct TopMoviesView: View {
    var body: some View {
        VStack{
            Text("Select your top 5")
            Text("Movies")
            Text("5/5 Selected")
            List(mockMovies, id: \.id) { movie in
                VStack(alignment: .leading) {
                    Text(movie.title)
                        .font(.headline)
                    if let description = movie.description {
                        Text(description)
                            .font(.subheadline)
                    }
                    Image(systemName: movie.poster)
                  
                }
                .padding()
            }
        }
    }
}

#Preview {
    TopMoviesView()
}
