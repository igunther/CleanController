import UIKit

class PopoverController: UIViewController {

    var popoverView = PopoverView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("shouldAutorotate: \(shouldAutorotate)")
    }
    
    override func loadView() {
        view = popoverView
    }
}
