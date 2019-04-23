import UIKit

class PopoverFromSourceController: UIViewController {

    var popoverFromSourceView = PopoverFromSourceView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func loadView() {
        view = popoverFromSourceView
    }
}
