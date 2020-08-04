//
//  CustomView.swift
//  CustomXibView
//
//  Created by Kang Seongchan on 2020/08/04.
//  Copyright © 2020 Hanryang. All rights reserved.
//

import UIKit

class CustomView: XibView {
    
}

class XibView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let className = String(describing: type(of: self))
        let nib = UINib(nibName: className, bundle: Bundle.main)
        
        guard let xibView = nib.instantiate(withOwner: self, options: nil).first as? UIView else { return }
        xibView.frame = self.bounds
        xibView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.addSubview(xibView)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


