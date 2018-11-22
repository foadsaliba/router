import UIKit


class WatchNowRouter {

    private let creator: Creator!
    private let rewindHandler: (() -> Void)

    
    required init(creator: Creator, rewindHandler: @escaping (() -> Void)) {
        self.creator = creator
        self.rewindHandler = rewindHandler
    }
    
    
    func rewind() {
        rewindHandler()
    }

}
