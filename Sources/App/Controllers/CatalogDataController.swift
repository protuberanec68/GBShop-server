//
//  CatalogData.swift
//  
//
//  Created by Игорь Андрианов on 30.03.2022.
//

import Vapor

class CatalogDataController {
    func catalogData(_ req: Request) throws -> EventLoopFuture<CatalogDataResponse>{
        guard let body = try? req.query.decode(CatalogDataRequest.self) else {
            throw Abort(.badRequest)
        }
        print(body)
        var response = CatalogDataResponse()

        if (body.id_category <= 0 || body.page_number <= 0) {
            response.result = 0
            response.errorMessage = "Wrong id category or page number"
        } else {
            response.result = 1
            response.page_number = body.page_number
            response.products = [
            Product(id_product: 123, product_name: "Ноутбук", price: 45600),
            Product(id_product: 456, product_name: "Мышка", price: 1000)
            ]
        }
        return req.eventLoop.future(response)
    }
}
