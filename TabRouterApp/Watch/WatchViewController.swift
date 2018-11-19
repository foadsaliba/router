import UIKit

class WatchViewController: UIViewController {

    let viewModel: WatchViewModel!

    init(viewModel: WatchViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
        tabBarItem = UITabBarItem(title: "Watch", image: UIImage(named: "play"), selectedImage: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("")
    }

    @IBAction func onButtonTapped(_ sender: UIButton) {
        viewModel.didSelectVideoFromTableView()
    }

}

