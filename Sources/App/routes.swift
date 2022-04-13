import Fluent
import Vapor

func routes(_ app: Application) throws {
    let registerController = RegisterController()
    app.post("register", use: registerController.register)
    
    let authController = AuthController()
    app.get("login", use: authController.login)
    app.get("logout", use: authController.logout)
    
    let changeDataController = ChangeDataController()
    app.post("changeData", use: changeDataController.changeData)
    
    let catalogDataController = CatalogDataController()
    app.get("catalogData", use: catalogDataController.catalogData)
    
    let reviewController = ReviewController()
    app.get("fetchReviews", use: reviewController.fetchReviews)
    app.post("addReview", use: reviewController.addReview)
    app.post("removeReview", use:reviewController.removeReview)

    let basketController = BasketController()
    app.post("payBasket", use: basketController.payBasket)
    
    try app.register(collection: TodoController())
}
