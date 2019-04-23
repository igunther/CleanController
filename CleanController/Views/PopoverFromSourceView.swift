import UIKit

class PopoverFromSourceView: UIView {
    fileprivate var mainStackView: UIStackView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        createSubViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        createSubViews()
    }
    
    func createSubViews() {
        backgroundColor = .brown
    }
}
