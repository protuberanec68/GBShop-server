//
//  BasketRequest.swift
//  
//
//  Created by Игорь Андрианов on 10.04.2022.
//

import Vapor

struct BasketRequest: Content {
    var basket_products: [BasketProduct]
    var user_id: Int
}

struct BasketProduct: Content {
    var productID: String?
    var quantity: String?
}
