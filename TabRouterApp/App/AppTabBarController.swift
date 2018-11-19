import Foundation
import UIKit

class AppTabBarController: UITabBarController {

    init(viewModel: AppTabViewModel) {
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
