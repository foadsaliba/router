import UIKit

class HomeViewController: UIViewController {

    var viewModel: HomeViewModel

    init(viewModel: HomeViewModel) {
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
        viewModel.didSelectArticleFromTableView()
    }

}

