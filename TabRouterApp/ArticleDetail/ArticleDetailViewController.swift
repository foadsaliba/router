import UIKit


class ArticleDetailViewController: UIViewController {

    let router: ArticleDetailRouter
    
    
    init(router: ArticleDetailRouter, viewModel: ArticleDetailViewModel) {
        self.router = router
        super.init(nibName: nil, bundle: nil)
    }

    
    required init?(coder aDecoder: NSCoder) {
        fatalError("")
    }
    

    @IBAction func close(_ sender: Any) {
        router.rewind()
    }
}
