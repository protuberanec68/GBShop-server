//
//  RegisterResponse.swift
//  
//
//  Created by Игорь Андрианов on 29.03.2022.
//

import Vapor

struct RegisterResponse: Content {
    var result: Int
    var userMessage: String?
    var errorMessage: String?
}
