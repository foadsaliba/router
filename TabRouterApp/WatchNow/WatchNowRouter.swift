import UIKit


class WatchNowRouter {

    let creator: Creator!
    
    var closeHandler: (() -> Void)?

    
    required init(creator: Creator) {
        self.creator = creator
    }
    
    
    func rewind() {
        closeHandler?()
    }

}
