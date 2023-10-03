//
//  ContentView.swift
//  ReelTalk
//
//  Created by Syed Raza on 10/2/23.
//

import SwiftUI

struct ContentView: View {
    @State private var searchText = ""
    var body: some View {
        ZStack{
            
            VStack {
                ColorChangingLinesView()
                SearchBar(text: $searchText)
                
            }
            
        }
    }
}

#Preview {
    ContentView()
}
