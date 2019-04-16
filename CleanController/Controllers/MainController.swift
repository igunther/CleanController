import UIKit

class MainViewController: UIViewController {

    let boxButton: UIButton = {
        let button = UIButton()
        button.setTitle("Show popover", for: .normal)
        button.frame.size = CGSize(width: 100, height: 100)
        button.addTarget(self, action: #selector(boxButtonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .red
        self.view.addSubview(boxButton)
        
        boxButton.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 100).isActive = true
        boxButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
    }
    
    @objc func boxButtonTapped() {
        let vc = PopoverController()
        vc.modalPresentationStyle = .overCurrentContext
        vc.modalTransitionStyle = .crossDissolve
        present(vc, animated: true, completion: nil)
        print("boxButtonTapped")
    }
}

