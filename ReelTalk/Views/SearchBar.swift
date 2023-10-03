//
//  SearchBar.swift
//  ReelTalk
//
//  Created by Syed Raza on 10/2/23.
//

import SwiftUI

struct MovieSearchView: View {
    @State private var searchText = ""
    @State private var movies: [String] = []
    var body: some View {
        VStack {
            SearchBar(text: $searchText, onSearch: searchMovies)
            
            List(movies, id: \.self) { movie in
                Text(movie)
            }
        }
    }

    func searchMovies() {
       // implement search logic here
    }
}

struct MovieSearchView_Previews: PreviewProvider {
    static var previews: some View {
        MovieSearchView()
    }
}

struct SearchBar: View {
    @Binding var text: String
    var onSearch: () -> Void = {}
    
    var body: some View {
        TextField("", text: $text, onCommit: onSearch)
            .padding(10)
            .background(RoundedRectangle(cornerRadius: 20).stroke(Color.gray))
            .padding(40)
            .overlay(
                ZStack(alignment: .leading) {
                    if text.isEmpty {
                        HStack {
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(.gray)
                                .padding(.leading, 8)
                                .accessibilityHidden(true)
                            Text("Search Movies")
                                .foregroundColor(.gray)
                        }
                    }
                }
            )
    }
}



#Preview {
    MovieSearchView()
}
