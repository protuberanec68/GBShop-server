//
//  RegisterController.swift
//  
//
//  Created by Игорь Андрианов on 29.03.2022.
//

import Vapor

class RegisterController {
    func register(_ req: Request) throws -> EventLoopFuture<RegisterResponse> {
        guard let body = try? req.content.decode(RegisterRequest.self) else {
            throw Abort(.badRequest)
        }
        print(body)
        let response = RegisterResponse(
            result: 1,
            userMessage: "Регистрация прошла успешно!",
            errorMessage: nil
        )
        return req.eventLoop.future(response)
    }
}
