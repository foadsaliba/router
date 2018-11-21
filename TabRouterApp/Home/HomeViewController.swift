import UIKit


class HomeViewController: UIViewController {

    var router: HomeRouter
    var viewModel: HomeViewModel

    
    init(router: HomeRouter, viewModel: HomeViewModel) {
        self.router = router
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
        tabBarItem = UITabBarItem(title: "Home", image: UIImage(named: "home"), selectedImage: nil)
    }

    
    required init?(coder aDecoder: NSCoder) {
        fatalError("")
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func onButtonTapped(_ sender: UIButton) {
        let article = Article(id: "crazy-article")
        router.route(to: article, from: self)
    }

}

