class HomeViewModel {

    var didSelectItem: ((String) -> Void)? = nil

    required init(creator: Creator) {
    }

    func didSelectArticleFromTableView() {
        didSelectItem?("article-1")
    }

}
