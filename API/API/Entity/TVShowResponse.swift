//
//  TVShowResponse.swift
//  API
//
//  Created by Kaan Ozdemir on 1.07.2022.
//

import Foundation

// MARK: - TVShowResponse
public class TVShowResponse: Codable {
    public var page: Int?
    public var results: [TVShowResult]?
    public var totalPages, totalResults: Int?

    enum CodingKeys: String, CodingKey {
        case page, results
        case totalPages = "total_pages"
        case totalResults = "total_results"
    }

    public init(page: Int?, results: [TVShowResult]?, totalPages: Int?, totalResults: Int?) {
        self.page = page
        self.results = results
        self.totalPages = totalPages
        self.totalResults = totalResults
    }
}

// MARK: - Result
public class TVShowResult: Codable {
    public var backdropPath: String?
    public var firstAirDate: String?
    public var genreIDS: [Int]?
    public var id: Int?
    public var name: String?
    public var originCountry: [String]?
    public var originalLanguage, originalName, overview: String?
    public var popularity: Double?
    public var posterPath: String?
    public var voteAverage: Double?
    public var voteCount: Int?

    enum CodingKeys: String, CodingKey {
        case backdropPath = "backdrop_path"
        case firstAirDate = "first_air_date"
        case genreIDS = "genre_ids"
        case id, name
        case originCountry = "origin_country"
        case originalLanguage = "original_language"
        case originalName = "original_name"
        case overview, popularity
        case posterPath = "poster_path"
        case voteAverage = "vote_average"
        case voteCount = "vote_count"
    }

    public init(backdropPath: String?, firstAirDate: String?, genreIDS: [Int]?, id: Int?, name: String?, originCountry: [String]?, originalLanguage: String?, originalName: String?, overview: String?, popularity: Double?, posterPath: String?, voteAverage: Double?, voteCount: Int?) {
        self.backdropPath = backdropPath
        self.firstAirDate = firstAirDate
        self.genreIDS = genreIDS
        self.id = id
        self.name = name
        self.originCountry = originCountry
        self.originalLanguage = originalLanguage
        self.originalName = originalName
        self.overview = overview
        self.popularity = popularity
        self.posterPath = posterPath
        self.voteAverage = voteAverage
        self.voteCount = voteCount
    }
}
