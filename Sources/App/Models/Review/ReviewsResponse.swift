//
//  ReviewsResponse.swift
//  
//
//  Created by Игорь Андрианов on 02.04.2022.
//

import Vapor

struct ReviewsResponse: Content {
    var result: Int?
    var comments: [Comment]?
    var errorMessage: String?
}

struct Comment: Content {
    var id_comment: Int
    var text: String
}
