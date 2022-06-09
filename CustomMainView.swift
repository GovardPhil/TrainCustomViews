//
//  CustomMainView.swift
//  MVVM
//
//  Created by ПавелК on 08.04.2022.
//

import UIKit

class CustomMainView: UIView {

    let nameView = CustomTitleView(type: .name)
    let ageView = CustomTitleView(type: .age)
    
    init() {
        super.init(frame: CGRect())
        backgroundColor = .white
        setConstraints()
    }
    
    
    func setConstraints () {
        let stack = UIStackView(views: [nameView,ageView], axis: .vertical, spacing: 16)
        Helper.addSub(views: [stack], to: self)
        Helper.tamicOff(views: [stack])
        
        
        stack.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        stack.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        stack.topAnchor.constraint(equalTo: topAnchor).isActive = true
        stack.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        
        nameView.heightAnchor.constraint(equalTo: ageView.heightAnchor).isActive = true
    }
    
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
}
