import UIKit

class WatchRouter {

    private(set) var watchNowRouter: WatchNowRouter!
    private(set) var navigationController: UINavigationController!

    required init(creator: Creator) {
        watchNowRouter = WatchNowRouter(creator: creator)
        navigationController = setUpWatch(creator: creator)
    }

    private func setUpWatch(creator: Creator) -> UINavigationController {
        let viewModel = WatchViewModel(creator: creator)
        viewModel.didSelectItem = self.didSelectItem()
        return UINavigationController(rootViewController: WatchViewController(viewModel: viewModel))
    }

    private func didSelectItem() -> (String) -> Void {
        return { [weak self] name in
            guard let self = self else { return }
            print("did select item", name)
            self.watchNowRouter.push(to: self.navigationController)
        }
    }

}
