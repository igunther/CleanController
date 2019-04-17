import UIKit

class PopoverView: UIView {
    var landscapeContraints: [NSLayoutConstraint]?
    var portraitContraints: [NSLayoutConstraint]?
    
    let blueBox: UIView = {
        let bb = UIView()
        bb.backgroundColor = .blue
        bb.translatesAutoresizingMaskIntoConstraints = false
        return bb
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        createSubViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        createSubViews()
    }

    func createSubViews() {
        autoresizingMask = [.flexibleHeight, .flexibleWidth]
        backgroundColor = UIColor(white: 1, alpha: 0.4) //.clear
        
        addSubview(blueBox)
        setConstraints()
    }
    
    func setConstraints() {
        // MARK: - Common constraints
        blueBox.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        blueBox.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        
        // MARK: - Orientation constraints
        portraitContraints = [
            blueBox.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.4),
            blueBox.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.7)
        ]
        
        landscapeContraints = [
            blueBox.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.7),
            blueBox.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.4)
        ]
    }
    
    override func updateConstraints() {
        super.updateConstraints()
        
        let currentOrientation = UIDevice.current.orientation
        
        if currentOrientation == .portrait {
            NSLayoutConstraint.deactivate(landscapeContraints!)
            NSLayoutConstraint.activate(portraitContraints!)
            print("updateConstraints: .portrait")
        } else {
            NSLayoutConstraint.deactivate(portraitContraints!)
            NSLayoutConstraint.activate(landscapeContraints!)
            print("updateConstraints: .landscape")
        }
    }
}
