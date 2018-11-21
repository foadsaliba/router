class ArticleDetailViewModel {

    let article: Article
    
    
    required init(article: Article, creator: Creator) {
        self.article = article
    }

}


struct Article {
    let id: String
}
