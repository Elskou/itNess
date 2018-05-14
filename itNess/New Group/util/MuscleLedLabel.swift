//
//  MuscleLedLabel.swift
//  itNess
//
//  Created by Yorrick BARNAY on 12/05/2018.
//  Copyright © 2018 Yorrick BARNAY. All rights reserved.
//

import UIKit

class MuscleLedLabel : UILabel {
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        self.commonInit()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.commonInit()
    }
    
    func commonInit(){
        self.layer.cornerRadius = 8
        self.clipsToBounds = true
        self.textColor = UIColor.black
        self.backgroundColor = UIColor.lightGray
        self.setProperties(borderWidth: 1.0, borderColor:UIColor.black)
    }
    func setProperties(borderWidth: Float, borderColor: UIColor) {
        self.layer.borderWidth = CGFloat(borderWidth)
        self.layer.borderColor = borderColor.cgColor
    }
}
