//
//  ViewController.swift
//  CustomXibView
//
//  Created by Kang Seongchan on 2020/08/04.
//  Copyright © 2020 Hanryang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var customView = CustomView(frame: view.frame)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(customView)

    }


}

