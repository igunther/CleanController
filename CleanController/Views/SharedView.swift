//
//  SharedView.swift
//  CleanController
//
//  Created by Øystein Günther on 16/04/2019.
//  Copyright © 2019 Øystein Günther. All rights reserved.
//

import UIKit

class SharedView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        createSubViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        createSubViews()
    }

    func createSubViews() {
        
        translatesAutoresizingMaskIntoConstraints = false
        
        backgroundColor = .yellow //UIColor(white: 0.9, alpha: 1)
        
        let blueBox: UIView = {
            let bb = UIView()
            bb.backgroundColor = .blue
            //bb.frame.size = CGSize(width: 100, height: 100)
            
            bb.translatesAutoresizingMaskIntoConstraints = false
            
            return bb
        }()
        
        addSubview(blueBox)
        
//        blueBox.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
//        blueBox.centerYAnchor.constraint(equalTo: safeAreaLayoutGuide.centerYAnchor).isActive = true
        
        blueBox.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        blueBox.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        blueBox.heightAnchor.constraint(equalToConstant: 200).isActive = true
        blueBox.widthAnchor.constraint(equalToConstant: 200).isActive = true

    }
}
