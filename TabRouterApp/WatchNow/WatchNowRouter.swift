import UIKit

class WatchNowRouter {

    let creator: Creator!

    required init(creator: Creator) {
        self.creator = creator
    }

    func push(to navigationViewController: UINavigationController, animated: Bool = true) {
        navigationViewController.pushViewController(
            WatchNowViewController(viewModel: WatchNowViewModel(creator: creator)),
            animated: animated)
    }

}
