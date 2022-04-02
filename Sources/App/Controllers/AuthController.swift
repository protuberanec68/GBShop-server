//
//  AuthController.swift
//  
//
//  Created by Игорь Андрианов on 29.03.2022.
//

import Vapor

class AuthController {
    func login(_ req: Request) throws -> EventLoopFuture<AuthResponse> {
        guard let body = try? req.query.decode(AuthLoginRequest.self) else {
            throw Abort(.badRequest)
        }
        print(body)
        var response = AuthResponse(
            result: 1,
            user: User(id_user: 123, user_login: body.username, user_name: "123", user_lastname: "123"),
            errorMessage: nil
        )
        //в данном случаю считаю важным - заглавная буква или строчная
        if (body.username != "Somebody" || body.password != "mypassword") {
            response.result = 0
            response.errorMessage = "Wrong username or password"
        }
        return req.eventLoop.future(response)
    }
    
    func logout(_ req: Request) throws -> EventLoopFuture<AuthResponse> {
        guard let body = try? req.query.decode(AuthLogoutRequest.self) else {
            throw Abort(.badRequest)
        }
        print(body)
        var response = AuthResponse(
            result: 1,
            errorMessage: nil
        )
        if body.id_user != 123 {
            response.result = 0
            response.errorMessage = "Wrong user ID"
        }
        
        return req.eventLoop.future(response)
    }
    
}
