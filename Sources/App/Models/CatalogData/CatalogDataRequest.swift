//
//  CatalogDataRequest.swift
//  
//
//  Created by Игорь Андрианов on 30.03.2022.
//

import Vapor

struct CatalogDataRequest: Content {
    var page_number: Int
    var id_category: Int

}
