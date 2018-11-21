import UIKit


class HomeRouter {

    private let creator: Creator
    private(set) var articleDetailRouter: ArticleDetailRouter
    
    
    required init(creator: Creator) {
        self.creator = creator
        articleDetailRouter = ArticleDetailRouter(creator: creator)
    }
    
    
    func route(to article: Article, from viewController: UIViewController) {
        let articleDetail = ArticleDetailViewController(router: articleDetailRouter, viewModel: ArticleDetailViewModel(article: article, creator: creator))
        viewController.navigationController?.pushViewController(articleDetail, animated: true)
        
        articleDetailRouter.closeHandler = {
            viewController.navigationController?.popViewController(animated: true)
        }
    }

}
