import UIKit

class HomeRouter {

    private(set) var navigationController: UINavigationController!
    private(set) var articleDetailRouter: ArticleDetailRouter!

    required init(creator: Creator) {
        articleDetailRouter = ArticleDetailRouter(creator: creator)
        navigationController = setUpHome(creator: creator)
    }

    private func setUpHome(creator: Creator) -> UINavigationController {
        let viewModel = HomeViewModel(creator: creator)
        viewModel.didSelectItem = self.didSelectItem()
        return UINavigationController(rootViewController: HomeViewController(viewModel: viewModel))
    }

    private func didSelectItem() -> (String) -> Void {
        return { [weak self] name in
            guard let self = self else { return }
            print("did select item", name)
            self.articleDetailRouter.push(to: self.navigationController)
        }
    }

}
