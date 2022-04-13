//
//  BasketResponse.swift
//  
//
//  Created by Игорь Андрианов on 10.04.2022.
//

import Vapor

struct BasketResponse: Content {
    var result: Int?
    var errorMessage: String?
}
