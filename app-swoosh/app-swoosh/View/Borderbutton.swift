//
//  Borderbutton.swift
//  app-swoosh
//
//  Created by Hawk Mobile on 2020/03/29.
//  Copyright © 2020 Hawk Mobile. All rights reserved.
//

import UIKit

class Borderbutton: UIButton {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 3.0
        layer.borderColor = UIColor.white.cgColor
    }

}
