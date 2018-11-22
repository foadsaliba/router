import UIKit


class WatchRouter {

    private let creator: Creator
    
    
    required init(creator: Creator) {
        self.creator = creator
    }
    
    
    func route(to video: Video, from viewController: UIViewController) {
        let watchNowRouter = WatchNowRouter(creator: creator) {
            viewController.dismiss(animated: true, completion: nil)
        }
        let watchNow = WatchNowViewController(router: watchNowRouter, viewModel: WatchNowViewModel(video: video, creator: creator))
        viewController.present(watchNow, animated: true, completion: nil)
    }

}
