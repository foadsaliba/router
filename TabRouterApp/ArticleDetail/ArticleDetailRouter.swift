import UIKit

class ArticleDetailRouter {

    let creator: Creator!

    required init(creator: Creator) {
        self.creator = creator
    }

    func push(to navigationViewController: UINavigationController, animated: Bool = true) {
        navigationViewController.pushViewController(
            ArticleDetailViewController(viewModel: ArticleDetailViewModel(creator: creator)),
            animated: animated)
    }

}
