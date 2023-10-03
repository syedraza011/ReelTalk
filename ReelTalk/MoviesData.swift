//
//  MoviesData.swift
//  ReelTalk
//
//  Created by Syed Raza on 10/2/23.
//

import Foundation
import SwiftUI

struct Movie: Hashable{
    var id: String
    var title: String
    var description: String?
    var poster: String
}

struct TVShow: Hashable{
    var id: String
    var title: String
    var type: String
    var poster: String
    var year: String
}

let mockMovies: [Movie] = [
    Movie(id: "tt0120338", title: "Titanic", poster:"https://www.movieposterdb.com/beauty-and-the-beast-i9173998/ac06ab34#&gid=1&pid=1"),
    Movie(id: "tt0120339",title: "Titanic", description: "Description for Movie 1", poster:"https://m.media-amazon.com/images/M/MV5BMDdmZGU3NDQtY2E5My00ZTliLWIzOTUtMTY4ZGI1YjdiNjk3XkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_SX300.jpg"),
    Movie(id: "tt01203340",title: "Titanic", description: "Description for Movie 1", poster:"https://m.media-amazon.com/images/M/MV5BMDdmZGU3NDQtY2E5My00ZTliLWIzOTUtMTY4ZGI1YjdiNjk3XkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_SX300.jpg"),
    Movie(id: "tt01203381", title: "Titanic",  poster:"https://m.media-amazon.com/images/M/MV5BMDdmZGU3NDQtY2E5My00ZTliLWIzOTUtMTY4ZGI1YjdiNjk3XkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_SX300.jpg"),
    Movie(id: "tt01203391",title: "Titanic", description: "Description for Movie 1", poster:"https://m.media-amazon.com/images/M/MV5BMDdmZGU3NDQtY2E5My00ZTliLWIzOTUtMTY4ZGI1YjdiNjk3XkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_SX300.jpg"),
    Movie(id: "tt012033999",title: "Titanic", description: "Description for Movie 1", poster:"https://m.media-amazon.com/images/M/MV5BMDdmZGU3NDQtY2E5My00ZTliLWIzOTUtMTY4ZGI1YjdiNjk3XkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_SX300.jpg"),
    Movie(id: "tt01203388", title: "Titanic", poster:"https://m.media-amazon.com/images/M/MV5BMDdmZGU3NDQtY2E5My00ZTliLWIzOTUtMTY4ZGI1YjdiNjk3XkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_SX300.jpg"),
    Movie(id: "tt012033869",title: "Titanic", description: "Description for Movie 1", poster:"https://m.media-amazon.com/images/M/MV5BMDdmZGU3NDQtY2E5My00ZTliLWIzOTUtMTY4ZGI1YjdiNjk3XkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_SX300.jpg"),
    Movie(id: "tt0120354539",title: "Titanic", description: "Description for Movie 1", poster:"https://m.media-amazon.com/images/M/MV5BMDdmZGU3NDQtY2E5My00ZTliLWIzOTUtMTY4ZGI1YjdiNjk3XkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_SX300.jpg")
]

let mockShows: [TVShow] = [
    TVShow(id: "tt012033876e5r8", title: "Titanic_Show", type:"TVShow_01", poster:"https://m.media-amazon.com/images/M/MV5BMDdmZGU3NDQtY2E5My00ZTliLWIzOTUtMTY4ZGI1YjdiNjk3XkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_SX300.jpg", year:"1979"),
 
    TVShow(id: "tt0120338768", title: "Titanic_Show 2", type:"TVShow", poster:"https://www.movieposterdb.com/beauty-and-the-beast-i9173998/ac06ab34#&gid=1&pid=1", year:"1979"),
    TVShow(id: "tt0120456338768", title: "Titanic_3", type:"TVShow", poster:"https://m.media-amazon.com/images/M/MV5BMDdmZGU3NDQtY2E5My00ZTliLWIzOTUtMTY4ZGI1YjdiNjk3XkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_SX300.jpg", year:"1979"),
    TVShow(id: "tt01203388iy678574768", title: "Titanic_4", type:"TVShow", poster:"https://m.media-amazon.com/images/M/MV5BMDdmZGU3NDQtY2E5My00ZTliLWIzOTUtMTY4ZGI1YjdiNjk3XkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_SX300.jpg", year:"1979"),
    TVShow(id: "tt01203gh38ertyer768", title: "Titanic_5", type:"TVShow", poster:"https://m.media-amazon.com/images/M/MV5BMDdmZGU3NDQtY2E5My00ZTliLWIzOTUtMTY4ZGI1YjdiNjk3XkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_SX300.jpg", year:"1979"),
    TVShow(id: "tt01hg20338errfd768", title: "Titanic", type:"TVShow", poster:"https://m.media-amazon.com/images/M/MV5BMDdmZGU3NDQtY2E5My00ZTliLWIzOTUtMTY4ZGI1YjdiNjk3XkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_SX300.jpg", year:"1979"),
    TVShow(id: "tt012033bvgjgh8768", title: "Titanic", type:"TVShow", poster:"https://m.media-amazon.com/images/M/MV5BMDdmZGU3NDQtY2E5My00ZTliLWIzOTUtMTY4ZGI1YjdiNjk3XkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_SX300.jpg", year:"1979"),
    TVShow(id: "tt0120fg33ghj8768", title: "Titanic", type:"TVShow", poster:"https://www.movieposterdb.com/beauty-and-the-beast-i9173998/ac06ab34#&gid=1&pid=1", year:"1979")
]
