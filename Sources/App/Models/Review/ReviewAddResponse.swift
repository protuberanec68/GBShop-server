//
//  ReviewAddResponse.swift
//  
//
//  Created by Игорь Андрианов on 02.04.2022.
//

import Vapor

struct ReviewAddResponse: Content {
    var result: Int?
    var userMessage: String?
    var errorMessage: String?
}
