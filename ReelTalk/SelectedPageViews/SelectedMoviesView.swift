//
//  SelectedMoviesView.swift
//  ReelTalk
//
//  Created by Syed Raza on 10/2/23.
//

import SwiftUI

struct SelectedMoviesView: View {
    var body: some View {
        
        VStack{
            Text("Select your top 5")
            Text("Movies")
            Text("0/5 Select")
            List(mockMovies, id: \.id) { movie in
                VStack(alignment: .leading) {
                    Text(movie.title)
                        .font(.headline)
                    if let description = movie.description {
                        Text(description)
                            .font(.subheadline)
                    }
                  
                }
                .padding()
            }
        }
    }
}

#Preview {
    SelectedMoviesView()
}
