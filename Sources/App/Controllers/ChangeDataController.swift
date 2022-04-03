//
//  ChangeDataController.swift
//  
//
//  Created by Игорь Андрианов on 29.03.2022.
//

import Vapor

class ChangeDataController {
    func changeData(_ req: Request) throws -> EventLoopFuture<ChangeDataResponse> {
        var response = ChangeDataResponse()
        guard let body = try? req.content.decode(ChangeDataRequest.self) else {
            throw Abort(.badRequest)
        }
        print(body)
        response = ChangeDataResponse(
            result: 1,
            errorMessage: nil
        )
        return req.eventLoop.future(response)
    }
}
