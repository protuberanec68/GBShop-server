//
//  ChangeDataRequest.swift
//  
//
//  Created by Игорь Андрианов on 29.03.2022.
//

import Vapor

struct ChangeDataRequest: Content {
    var id_user: Int
    var username: String
    var password: String
    var email: String
    var gender: String
    var credit_card: String
    var bio: String

}
