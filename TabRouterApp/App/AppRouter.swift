import UIKit


class AppRouter {

    private let creator: Creator
    private let homeRouter: HomeRouter
    private let watchRouter: WatchRouter

    
    required init(creator: Creator) {
        self.creator = creator
        homeRouter = HomeRouter(creator: creator)
        watchRouter = WatchRouter(creator: creator)
    }

    
    func setUp(for window: UIWindow?) {
        let homeViewController = HomeViewController(router: homeRouter, viewModel: HomeViewModel(creator: creator))
        let homeNavigationController = UINavigationController(rootViewController: homeViewController)
        
        let watchViewController = WatchViewController(router: watchRouter, viewModel: WatchViewModel(creator: creator))
        let watchNavigationController = UINavigationController(rootViewController: watchViewController)
        
        let viewController = AppTabBarController(viewModel: AppTabViewModel())
        
        viewController.viewControllers = [homeNavigationController, watchNavigationController]
        window?.rootViewController = viewController
        window?.makeKeyAndVisible()
    }

}
