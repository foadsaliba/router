class WatchViewModel {

    var didSelectItem: ((String) -> Void)? = nil

    required init(creator: Creator) {
    }


    func didSelectVideoFromTableView() {
        didSelectItem?("watch-video-now")
    }


}
