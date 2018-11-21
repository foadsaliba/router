import UIKit


class WatchViewController: UIViewController {

    let router: WatchRouter
    let viewModel: WatchViewModel!

    
    init(router: WatchRouter, viewModel: WatchViewModel) {
        self.router = router
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
        tabBarItem = UITabBarItem(title: "Watch", image: UIImage(named: "play"), selectedImage: nil)
    }

    
    required init?(coder aDecoder: NSCoder) {
        fatalError("")
    }

    
    @IBAction func onButtonTapped(_ sender: UIButton) {
        let video = Video(id: "cool video")
        router.route(to: video, from: self)
    }

}

