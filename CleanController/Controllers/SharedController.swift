//
//  SharedController.swift
//  CleanController
//
//  Created by Øystein Günther on 16/04/2019.
//  Copyright © 2019 Øystein Günther. All rights reserved.
//

import UIKit

class SharedController: UIViewController {

    var sharedView = SharedView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func loadView() {
        view = sharedView
    }
}
