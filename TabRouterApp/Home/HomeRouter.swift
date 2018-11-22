import UIKit


class HomeRouter {

    private let creator: Creator
    
    
    required init(creator: Creator) {
        self.creator = creator
    }
    
    
    func route(to article: Article, from viewController: UIViewController) {
        let articleDetailRouter = ArticleDetailRouter(creator: creator) {
            viewController.navigationController?.popViewController(animated: true)
        }
        
        let articleDetail = ArticleDetailViewController(router: articleDetailRouter, viewModel: ArticleDetailViewModel(article: article, creator: creator))
        viewController.navigationController?.pushViewController(articleDetail, animated: true)
    }

}
