import UIKit

class AppRouter {

    private let homeRouter: HomeRouter
    private let watchRouter: WatchRouter

    required init(creator: Creator) {
        homeRouter = HomeRouter(creator: creator)
        watchRouter = WatchRouter(creator: creator)
    }

    func setUp(for window: UIWindow?) {
        let viewController = AppTabBarController(viewModel: AppTabViewModel())
        viewController.viewControllers = [homeRouter.navigationController, watchRouter.navigationController]
        window?.rootViewController = viewController
        window?.makeKeyAndVisible()
    }

}
