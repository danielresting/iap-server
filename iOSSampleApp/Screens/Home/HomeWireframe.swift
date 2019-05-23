import UIKit

class HomeWireframe {
    func createViewController() -> UIViewController {
        let presenter = HomePresenter()
        
        let viewController = HomeViewController()
        viewController.presenter = presenter
        presenter.ui = viewController
        
        let interactor = HomeInteractor()
        interactor.output = presenter
        presenter.interactor = interactor
        
        return viewController
    }
}
