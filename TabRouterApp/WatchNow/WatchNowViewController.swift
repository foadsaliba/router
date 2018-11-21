import UIKit


class WatchNowViewController: UIViewController {
    
    let router: WatchNowRouter

    
    init(router: WatchNowRouter, viewModel: WatchNowViewModel) {
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
