//
//  DeleteButton.swift
//  MVVM
//
//  Created by ПавелК on 08.04.2022.
//

import UIKit

class CustomButton: UIButton {
    var indexPath : IndexPath?
    
    init(title : String, borderColor : CGColor, textColor : UIColor) {
        super.init(frame: CGRect())
        self.layer.borderColor = borderColor
        self.setTitleColor(textColor, for: .normal)
        self.setTitle(title, for: .normal)
        self.backgroundColor = .clear
        self.titleLabel?.font = FontsLibrary.fieldButton
        self.layer.borderWidth = 3
        self.layer.cornerRadius = 27
        self.tag = 1
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
