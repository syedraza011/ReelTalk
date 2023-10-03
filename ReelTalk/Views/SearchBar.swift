//
//  SearchBar.swift
//  ReelTalk
//
//  Created by Syed Raza on 10/2/23.
//

import SwiftUI

struct MovieSearchView: View {
    @State private var searchText = ""
    @State private var movies: [String] = [] // Replace 'String' with a movie data model

    var body: some View {
        VStack {
            SearchBar(text: $searchText, onSearch: searchMovies)
            
            List(movies, id: \.self) { movie in
                Text(movie)
            }
        }
    }

    func searchMovies() {
        // Implement the logic to search for movies based on the searchText.
        // Update the 'movies' array with the search results.
    }
}

struct MovieSearchView_Previews: PreviewProvider {
    static var previews: some View {
        MovieSearchView()
    }
}
//struct SearchBar: View {
//    @Binding var text: String
//    var onSearch: () -> Void
//    
//    var body: some View {
//        TextField("", text: $text, onCommit: onSearch)
//            .textFieldStyle(RoundedBorderTextFieldStyle())
//            .padding(.leading, 8)
//            .overlay(
//                ZStack(alignment: .leading) {
//                    if text.isEmpty {
//                        HStack {
//                            Image(systemName: "magnifyingglass")
//                                .foregroundColor(.gray)
//                                .frame(alignment: .leading)
//                                .padding(.leading, 8)
//                                .accessibilityHidden(true)
//                            Text("Search Movies")
//                                .foregroundColor(.gray)
//                        }
//                    }
//               
//                } .padding(15)
//            )
//    }
//}
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
