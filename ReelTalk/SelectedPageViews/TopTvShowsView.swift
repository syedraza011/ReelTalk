//
//  TopTvShowsView.swift
//  ReelTalk
//
//  Created by Syed Raza on 10/2/23.
//


import SwiftUI

//struct TopTvShowsView: View {
//    let columns = [
//        GridItem(.flexible(), spacing: 50),
//        GridItem(.flexible(), spacing: 10)
//    ]
//
//    var body: some View {
//        ScrollView {
//            VStack {
//                Text("Select your top 5")
//                    .font(.title)
//                Text("TV Shows")
//                    .font(.title)
//                Text("0/5 Selected")
//                    .font(.headline)
//
//                LazyVGrid(columns: columns, spacing: 20) {
//                    ForEach(mockShows, id: \.id) { tvShow in
//                        VStack {
//                            if let posterURL = URL(string: tvShow.poster) {
//                                AsyncImage(url: posterURL) { phase in
//                                    if let image = phase.image {
//                                        image
//                                            .resizable()
//                                            .aspectRatio(contentMode: .fit)
//                                            .frame(width: 250, height: 300)
//                                       
//                                    } else if phase.error != nil {
//                                        // Handle loading error here
//                                    } else {
//                                        // Show a placeholder or loading indicator here
//                                        ProgressView()
//                                    }
//                                }    .padding(2)
//                            }
//                        }
//                        .padding(.horizontal, 40) // Add horizontal padding to posters in each row
//                    }
//                }
//                .padding(.vertical, 10) // Add vertical padding to separate rows
//            
//            }
//        }
//    }
//}
import SwiftUI

struct TopTvShowsView: View {
    let columns = [
        GridItem(.flexible(), spacing: 10),
        GridItem(.flexible(), spacing: 10)
    ]

    @State private var selectedShows: Set<String> = []

    var body: some View {
        ScrollView {
            VStack {
                Text("Select your top 5")
                    .font(.title)
                Text("TV Shows")
                    .font(.title)
                Text("\(selectedShows.count)/5 Selected")
                    .font(.headline)

                ForEach(mockShows.chunked(into: 2), id: \.self) { rowShows in
                    LazyVGrid(columns: columns, spacing: 10) {
                        ForEach(rowShows, id: \.id) { tvShow in
                            VStack {
                                if let posterURL = URL(string: tvShow.poster) {
                                    ZStack {
                                        AsyncImage(url: posterURL) { phase in
                                            if let image = phase.image {
                                                image
                                                    .resizable()
                                                    .aspectRatio(contentMode: .fit)
                                                    .frame(width: 250, height: 300)
                                                    .overlay(
                                                        selectedShows.contains(tvShow.id) ?
                                                        Image(systemName: "checkmark")
                                                            .foregroundColor(.yellow)
                                                            .font(.system(size: 30))
                                                            .padding(5) // Add padding for the checkmark
                                                            .background(Color.black.opacity(0.6).cornerRadius(10))
                                                            .offset(x: 5, y: -5) // Adjust the offset as needed
                                                        : nil,
                                                        alignment: .topTrailing
                                                    )
                                            } else if phase.error != nil {
                                                // Handle loading error here
                                            } else {
                                                // Show a placeholder or loading indicator here
                                                ProgressView()
                                            }
                                        }
                                        .onTapGesture {
                                            toggleSelection(tvShow.id)
                                        }
                                    }
                                }
                            }
                            .padding(.horizontal, 10) // Add horizontal padding to posters in each row
                        }
                    }
                    .padding(.vertical, 10) // Add vertical padding to separate rows
                }
                .padding(30)
            }
        }
    }

    func toggleSelection(_ showId: String) {
        if selectedShows.contains(showId) {
            selectedShows.remove(showId)
        } else {
            if selectedShows.count < 5 {
                selectedShows.insert(showId)
            }
        }
    }
}

extension Array {
    func chunked(into size: Int) -> [[Element]] {
        return stride(from: 0, to: count, by: size).map {
            Array(self[$0..<Swift.min($0 + size, count)])
        }
    }
}

struct TopTvShowsView_Previews: PreviewProvider {
    static var previews: some View {
        TopTvShowsView()
    }
}

#Preview {
    TopTvShowsView()
}
