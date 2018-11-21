import UIKit


class WatchRouter {

    private let creator: Creator
    private(set) var watchNowRouter: WatchNowRouter
    
    
    required init(creator: Creator) {
        self.creator = creator
        watchNowRouter = WatchNowRouter(creator: creator)
    }
    
    
    func route(to video: Video, from viewController: UIViewController) {
        let watchNow = WatchNowViewController(router: watchNowRouter, viewModel: WatchNowViewModel(video: video, creator: creator))
        viewController.present(watchNow, animated: true, completion: nil)
        
        watchNowRouter.closeHandler = {
            viewController.dismiss(animated: true, completion: nil)
        }
        
    }

}
