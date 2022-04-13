//
//  BasketController.swift
//
//
//  Created by Игорь Андрианов on 10.04.2022.
//

import Vapor

class BasketController {
    func payBasket(_ req: Request) throws -> EventLoopFuture<BasketResponse> {
        var response = BasketResponse()
        print(req)
        guard let body = try? req.content.decode(BasketRequest.self) else {
            throw Abort(.badRequest)
        }
        print(body)
        response = BasketResponse(
            result: 1,
            errorMessage: nil
        )
        return req.eventLoop.future(response)
    }
}
