//
//  ChangeDataResponse.swift
//  
//
//  Created by Игорь Андрианов on 29.03.2022.
//

import Vapor

struct ChangeDataResponse: Content {
    var result: Int?
    var errorMessage: String?
}
