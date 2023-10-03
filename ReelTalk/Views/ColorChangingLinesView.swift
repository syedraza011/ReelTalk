//
//  ColorChangingLinesView.swift
//  ReelTalk
//
//  Created by Syed Raza on 10/2/23.
//
//import SwiftUI
//
//struct ColorChangingLinesView: View {
//    @State private var selectedPage = 1
//
//    var body: some View {
//        VStack (spacing: -20){
//            HStack(spacing: 15) {
//                Rectangle()
//                    .frame(width: 40, height: 5)
//                    .foregroundColor(selectedPage == 1 ? .yellow : .black)
//                    .onTapGesture {
//                        selectPage(page: 1)
//                    }
//
//                Rectangle()
//                    .frame(width: 40, height: 5)
//                    .foregroundColor(selectedPage == 2 ? .yellow : .black)
//                    .onTapGesture {
//                        selectPage(page: 2)
//                    }
//
//                Rectangle()
//                    .frame(width: 40, height: 5)
//                    .foregroundColor(selectedPage == 3 ? .yellow : .black)
//                    .onTapGesture {
//                        selectPage(page: 3)
//                    }
//            }
//        
//
//            TabView(selection: $selectedPage) {
//                TopMoviesView()
//                    .tag(1)
//
//                SelectedMoviesView()
//                    .tag(2)
//
//                TopTvShowsView()
//                    .tag(3)
//            }
//            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
//        }
//    }
//
//    private func selectPage(page: Int) {
//        selectedPage = page
//    }
//}
//
//    struct ColorChangingLinesView_Previews: PreviewProvider{
//    static var previews: some View {
//        ContentView()
//    }
//}
import SwiftUI

struct ColorChangingLinesView: View {
    @State private var selectedPage = 1

    var body: some View {
        VStack(spacing: 0) {
            HStack(spacing: 15) {
                Rectangle()
                    .frame(width: 40, height: 5)
                    .foregroundColor(selectedPage == 1 ? .yellow : .black)
                    .onTapGesture {
                        selectPage(page: 1)
                    }

                Rectangle()
                    .frame(width: 40, height: 5)
                    .foregroundColor(selectedPage == 2 ? .yellow : .black)
                    .onTapGesture {
                        selectPage(page: 2)
                    }

                Rectangle()
                    .frame(width: 40, height: 5)
                    .foregroundColor(selectedPage == 3 ? .yellow : .black)
                    .onTapGesture {
                        selectPage(page: 3)
                    }
            }
            .frame(height: 5)
            .padding(.top, 10)

            Spacer()

            // Display content based on selectedPage
            if selectedPage == 1 {
                TopMoviesView()
            } else if selectedPage == 2 {
                SelectedMoviesView()
            } else if selectedPage == 3 {
                TopTvShowsView()
            }
            
            Spacer()
        }
    }

    private func selectPage(page: Int) {
        selectedPage = page
    }
}

struct ColorChangingLinesView_Previews: PreviewProvider {
    static var previews: some View {
        ColorChangingLinesView()
    }
}

#Preview {
    ColorChangingLinesView()
}
