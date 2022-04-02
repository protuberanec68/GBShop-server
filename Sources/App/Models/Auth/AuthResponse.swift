//
//  AuthResponse.swift
//  
//
//  Created by Игорь Андрианов on 29.03.2022.
//

import Vapor

struct AuthResponse: Content {
    var result: Int
    var user: User?
    var errorMessage: String?
}

struct User: Content {
    var id_user: Int
    var user_login: String
    var user_name: String
    var user_lastname: String
  }
