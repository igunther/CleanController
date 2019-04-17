import UIKit

class PopoverController: UIViewController {

    var popoverView = PopoverView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func loadView() {
        view = popoverView
    }
    
    override func viewDidLayoutSubviews() {
        popoverView.updateConstraints()
    }
}
