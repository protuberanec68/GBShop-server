//
//  ReviewAddRequest.swift
//  
//
//  Created by Игорь Андрианов on 02.04.2022.
//

import Vapor

struct ReviewAddRequest: Content {
    var id_user: Int
    var text: String
}
