import UIKit


class AppRouter {

    private let creator: Creator

    
    required init(creator: Creator) {
        self.creator = creator
    }

    
    func setUp(for window: UIWindow?) {
        let homeRouter = HomeRouter(creator: creator)
        let homeViewController = HomeViewController(router: homeRouter, viewModel: HomeViewModel(creator: creator))
        let homeNavigationController = UINavigationController(rootViewController: homeViewController)
        
        let watchRouter = WatchRouter(creator: creator)
        let watchViewController = WatchViewController(router: watchRouter, viewModel: WatchViewModel(creator: creator))
        let watchNavigationController = UINavigationController(rootViewController: watchViewController)
        
        let viewController = AppTabBarController(viewModel: AppTabViewModel())
        
        viewController.viewControllers = [homeNavigationController, watchNavigationController]
        window?.rootViewController = viewController
        window?.makeKeyAndVisible()
    }

}
