//
//  AuthRequest.swift
//  
//
//  Created by Игорь Андрианов on 29.03.2022.
//

import Vapor

struct AuthLoginRequest: Content {
    var username: String
    var password: String
    var cookie: String?

}

struct AuthLogoutRequest: Content {
    var id_user: Int
}
