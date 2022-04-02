//
//  CatalogDataResponse.swift
//  
//
//  Created by Игорь Андрианов on 30.03.2022.
//

import Vapor

struct CatalogDataResponse: Content {
    var result: Int?
    var page_number: Int?
    var products: [Product]?
    var errorMessage: String?
}

struct Product: Content {
    var id_product: Int
    var product_name: String
    var price: Int
}
