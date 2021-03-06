import UIKit

class MainViewController: UIViewController {

    let blueCenteredBoxButton: UIButton = {
        let button = UIButton()
        button.setTitle("Show popover", for: .normal)
        button.frame.size = CGSize(width: 100, height: 100)
        button.addTarget(self, action: #selector(blueCenteredBoxButtonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let popoverFromSourceViewButton: UIButton = {
        let button = UIButton()
        button.setTitle(".popover from sourceView", for: .normal)
        button.frame.size = CGSize(width: 100, height: 100)
        button.addTarget(self, action: #selector(popoverFromSourceViewButtonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .red
        self.view.addSubview(blueCenteredBoxButton)
        self.view.addSubview(popoverFromSourceViewButton)
        
        blueCenteredBoxButton.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 100).isActive = true
        blueCenteredBoxButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        popoverFromSourceViewButton.topAnchor.constraint(equalTo: blueCenteredBoxButton.topAnchor, constant: 100).isActive = true
        popoverFromSourceViewButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        let dismissTapGesture = UITapGestureRecognizer(target: self, action: #selector(dismissPopover(_:)))
        view.addGestureRecognizer(dismissTapGesture)
    }
    
    let popoverFromSourceController = PopoverFromSourceController()
    
    @objc func dismissPopover(_ sender: UITapGestureRecognizer) {
        if sender.state == UIGestureRecognizer.State.ended {
            let point = sender.location(in: view)
            
            print("Tapped")
            
            if !self.view.frame.contains(point) {
                // We have tapped outside the popover
            }
        }
    }
    
    @objc func blueCenteredBoxButtonTapped() {
        let vc = PopoverController()
        vc.modalPresentationStyle = .overCurrentContext
        vc.modalTransitionStyle = .crossDissolve
        present(vc, animated: true, completion: nil)
    }
    
    @objc func popoverFromSourceViewButtonTapped() {
        
        popoverFromSourceController.modalPresentationStyle = .popover
        popoverFromSourceController.preferredContentSize = CGSize(width: 200, height: 300)
        popoverFromSourceController.isModalInPopover = false
        
        let presentationController = popoverFromSourceController.popoverPresentationController
        presentationController?.sourceView = popoverFromSourceViewButton
                
        present(popoverFromSourceController, animated: true)
    }
}

