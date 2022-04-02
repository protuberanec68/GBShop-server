//
//  ReviewController.swift
//  
//
//  Created by Игорь Андрианов on 02.04.2022.
//

import Vapor

class ReviewController {
    func fetchReviews(_ req: Request) throws -> EventLoopFuture<ReviewsResponse> {
        guard let body = try? req.query.decode(ReviewsRequest.self) else {
            throw Abort(.badRequest)
        }
        print(body)
        var response = ReviewsResponse()
        if body.id_product > 0 {
            response = ReviewsResponse(
                result: 1,
                comments: [
                    Comment(id_comment: 123, text: "OK"),
                    Comment(id_comment: 321, text: "Bad")
                ],
                errorMessage: nil)
        } else {
            response = ReviewsResponse(result: 0, comments: nil, errorMessage: "Некорректный id товара")
        }
        return req.eventLoop.future(response)
    }
    
    func addReview(_ req: Request) throws -> EventLoopFuture<ReviewAddResponse> {
        guard let body = try? req.content.decode(ReviewAddRequest.self) else {
            throw Abort(.badRequest)
        }
        print(body)
        var response = ReviewAddResponse(result: 1)
        if body.id_user < 0 {
            response = ReviewAddResponse(result: 0, userMessage: nil, errorMessage: "Некорректный id пользователя")
        } else if body.text.count > 200 {
            response = ReviewAddResponse(result: 0, userMessage: nil, errorMessage: "Слишком длинный отзыв - должен быть не больше 200 символов")
        }
        return req.eventLoop.future(response)
    }
    
    func removeReview(_ req: Request) throws -> EventLoopFuture<ReviewRemoveResponse> {
        guard let body = try? req.content.decode(ReviewRemoveRequest.self) else {
            throw Abort(.badRequest)
        }
        print(body)
        var response = ReviewRemoveResponse(result: 1)
        if body.id_comment < 0 {
            response = ReviewRemoveResponse(result: 0, userMessage: nil, errorMessage: "Некорректный id отзыва")
        }
        return req.eventLoop.future(response)
    }
}
