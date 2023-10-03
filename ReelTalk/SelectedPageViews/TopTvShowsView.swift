//
//  TopTvShowsView.swift
//  ReelTalk
//
//  Created by Syed Raza on 10/2/23.
//

import SwiftUI

struct TopTvShowsView: View {
    let columns = [
        GridItem(.flexible(), spacing: 10),
        GridItem(.flexible(), spacing: 10)
    ]
    
@State private var selectedShows: Set<String> = []
@State private var isContinueButtonYellow = false

var body: some View {
VStack {
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
.foregroundColor(.black)
.font(.system(size: 30))
.padding(5)
.background(Color.yellow.opacity(3).cornerRadius(25))
.offset(x: -30, y: 12)
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
.padding(.horizontal, 10)
}
}
.padding(.vertical, 10)
}
.padding(30)
}
}
            
            Button("Continue") {
                // Implement the action when the button is tapped
            }
            .frame(width: 200, height: 40)
            .background(isContinueButtonYellow ? Color.yellow : Color.gray)
            .foregroundColor(.white)
            .font(.headline)
            .cornerRadius(20)
            .padding(.top, 20)
        }
        .onAppear {
            // Check if at least one show is selected and change button color accordingly
            isContinueButtonYellow = !selectedShows.isEmpty
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
        
        // Update button color when selection changes
        isContinueButtonYellow = !selectedShows.isEmpty
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
